import 'dart:convert';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];
  String _selectedModel = 'gemini';
  final List<String> _models = ['gemini', 'chatgpt'];
  bool _isLoading = false;
  final ScrollController _scrollController = ScrollController();
  late Dio _dio;
  final CookieJar _cookieJar = CookieJar();

  @override
  void initState() {
    super.initState();
    _initDio();
  }

  void _initDio() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://akashkeote.vercel.app',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));
    _dio.interceptors.add(CookieManager(_cookieJar));
  }

  Future<void> _sendMessage(String text) async {
    if (_isLoading || text.isEmpty) return;

    setState(() {
      _messages.add({'text': text, 'isUser': true});
      _isLoading = true;
    });
    _scrollToBottom();

    try {
      final response = await _dio.post(
        '/chat',
        data: jsonEncode({
          "message": text,
          "bot": _selectedModel,
        }),
        options: Options(
          headers: {"Content-Type": "application/json"},
          sendTimeout: const Duration(seconds: 30),
        ),
      );

      setState(() {
        _messages.add({'text': response.data["response"], 'isUser': false});
      });
    } on DioException catch (e) {
      _showError(e.type == DioExceptionType.connectionTimeout
          ? 'Request timed out. Please check your connection'
          : 'Error: ${e.message}');
    } catch (e) {
      _showError('Unexpected error: $e');
    } finally {
      setState(() => _isLoading = false);
      _scrollToBottom();
    }

    _controller.clear();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _showError(String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light, // For status bar icons
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFF5F7FA), Color(0xFFC3CFE2)],
            ),
          ),
        ),
        title: Text(
          'Akash Chatbot',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          DropdownButton<String>(
            value: _selectedModel,
            icon: Icon(Icons.arrow_drop_down, color: Colors.black),
            items: _models.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value.toUpperCase(),
                  style: TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() => _selectedModel = value!);
            },
            underline: Container(),
            dropdownColor: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF5F7FA), Color(0xFFC3CFE2)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            controller: _scrollController,
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              final message = _messages[index];
              return ChatBubble(
                text: message['text'],
                isUser: message['isUser'],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF5F7FA), Color(0xFFC3CFE2)],
          ),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(137, 255, 255, 255),
                    ),
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Ask me anything...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      onSubmitted: _sendMessage,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(186, 255, 255, 255),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.black),
                    onPressed: () => _sendMessage(_controller.text),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isUser;

  const ChatBubble({super.key, required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isUser ? Colors.blue[100] : Colors.yellow[200],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isUser
                    ? Colors.blue.shade200 // Darker blue for user
                    : Colors.amber.shade200, // Amber for bot
                width: 3, // Increased border width
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                )
              ],
            ),
            child: Text(
              text,
              style: TextStyle(
                color: isUser ? Colors.blue[900] : Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
