import 'dart:convert';  //encode and decode json data

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
///json efile ko load
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Percentile Cheker',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 253, 193, 193)),
      home: const ApnCollege(),
    );
  }
}

class ApnCollege extends StatefulWidget {
  const ApnCollege({super.key});

  @override
  _CollegePredictorState createState() => _CollegePredictorState();
}

class _CollegePredictorState extends State<ApnCollege> {
  final TextEditingController _percentileController = TextEditingController();
  List<dynamic> _collegeList = [];
  List<dynamic> _filteredColleges = [];
  bool _isLoading = true;
  String? _errorMessage;

  String _selectedRegion = "All Regions";
  String _selectedBranch = "All Branch";

  static const List<String> _regions = [
    "All Regions",
    "Shegaon",
    "Amravati",
    "Akola",
    "Pusad",
    "Chikhali",
    "Yavatmal",
    "Buldhana",
    "Nanded",
    "Nagpur",
    "Pune",
    "Kopargaon",
    "Pimpri",
    "Lavale",
    "Sangli",
    "Maharashtra",
    "Solapur",
    "Pandharpur",
    "Ichalkaranji",
    "Kolhapur",
    "Warananagar",
    "Budhgaon",
    "Satara",
    "Malegaon-Baramati",
    "Jaysingpur",
    "Baramati",
    "Dumbarwadi",
    "Bhor",
    "Kuran",
    "Barshi",
    "Miraj",
    "Sangola",
    "Akluj",
    "Gadhinglaj",
    "Lonavala",
    "Ravet",
    "Talegaon",
    "Yelur"
  ];

  static const List<String> _branches = [
    "All Branch",
    "Information Technology",
    "Electrical Engg[Electronics and Power]",
    "Electronics and Telecommunication Engg",
    "Mechanical Engineering",
    "Civil Engineering",
    "Computer Science and Engineering",
    "Electrical Engineering",
    "Artificial Intelligence (AI) and Data Science",
    "Computer Engineering",
    "Mechatronics Engineering",
    "Electronics and Computer Engineering",
    "Instrumentation Engineering",
    "Automation and Robotics",
    "Artificial Intelligence and Data Science",
    "Artificial Intelligence and Machine Learning",
    "Fashion Technology",
    "Technical Textiles",
    "Man Made Textile Technology",
    "Textile Chemistry",
    "Computer Science and Engineering(Artificial)",
    "Chemical Engineering",
    "Computer Science and Engineering (Artificial Intelligence)",
    "Computer Science and Engineering (Data Science)",
    "Bio Technology",
    "Computer Science and Business Systems",
    "Civil and Environmental Engineering",
    "Electronics and Computer Science",
    "Robotics and Automation",
    "Instrumentation and Control Engineering",
    "Computer Science and Engineering (Internet of Things)",
    "Computer Engineering (Software Engineering)",
    "Printing and Packing Technology",
    "Electronics Engineering (VLSI Design)",
    "Aeronautical Engineering",
    "Food Technology",
    "Computer Science and Design",
    "Artificial Intelligence (AI)",
    "Electronics and Telecommunication Engineering",
    "Computer Science and Engineering (Cyber Security)",
    "Robotics and Artificial Intelligence",
    "Electronics Engineering (VLSI Design and Technology)",
    "Electronics and Communication (Advanced Communication Systems)",
    "Computer Science",
    "Plastic and Polymer Engineering",
    "Paper and Pulp Technology",
    "Petro Chemical Engineering",
    "Oil Technology",
    "Surface Coating Technology",
    "Manufacturing Science and Engineering",
    "Metallurgy and Material Technology",
    "Cyber Security"
  ];

  @override
  void initState() {                                                          //init initialize karta hai ek hi baar call hoga ye method intialize task ko handle karega
    super.initState();                                                         //state class ka lifecycle method init object on scren super base class app me bug aur unexpected behvoir hoga if not use
    _loadCollegeData();                                                           //colg data load
  }

  Future<void> _loadCollegeData() async {                                              //dont block ui runs in Bg boleto fture asynchrnous fun
    try {    
      final data = await rootBundle.loadString('assets/colleges.json');                               //awit means task hone pr dusra code run nhito wait
      setState(() {
        _collegeList = json.decode(data);
       _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = "Failed to load college data: ";
        _isLoading = false;
      });
    }
  }

  void _filterColleges() {
    final input = _percentileController.text;
    if (input.isEmpty) {
      setState(() => _errorMessage = "Please enter your percentile");
      return;
    }

    final userPercentile = double.tryParse(input);
    if (userPercentile == null || userPercentile < 0 || userPercentile > 100) {
      setState(() => _errorMessage = "Invalid percentile value (0-100)");
      return;
    }

    setState(() {
      _errorMessage = null;
      _filteredColleges = _collegeList.where((college) {
        final collegePercentile = college["cutoff_percentile"] as double;
        final matchesRegion = _selectedRegion == "All Regions" ||
            (college["region"] as String).contains(_selectedRegion);
        final matchesBranch = _selectedBranch == "All Branch" ||
            (college["branch"] as String).contains(_selectedBranch);

        return collegePercentile <= userPercentile &&
            matchesRegion &&
            matchesBranch;
      }).toList()
        ..sort(
            (a, b) => b["cutoff_percentile"].compareTo(a["cutoff_percentile"]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("MHT CET PCM"),centerTitle: true,),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _percentileController,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      labelText: "Enter Your Percentile (0-100)",
                      suffixIcon: const Icon(Icons.percent),
                      filled: true,
                      fillColor: Colors.white,
                      errorText: _errorMessage,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildDropdown(_regions, _selectedRegion, (value) {
                    setState(() => _selectedRegion = value!);
                  }),
                  const SizedBox(height: 16),
                  _buildDropdown(_branches, _selectedBranch, (value) {
                    setState(() => _selectedBranch = value!);
                  }),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.search_off_outlined),
                    label: const Text("Find Colleges"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 14),
                      backgroundColor: const Color.fromARGB(255, 227, 239, 255),
                    ),
                    onPressed: _filterColleges,
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: _filteredColleges.isEmpty
                        ? const Center(
                            child: Text(
                                "No colleges found matching your criteria"))
                        : _buildCollegeList(),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildDropdown(
      List<String> items, String value, ValueChanged<String?> onChanged) {
    return DropdownButtonFormField<String>(
      value: value,
      isExpanded: true,
      decoration: const InputDecoration(
        filled: true,
        fillColor: Colors.white,
      ),
      items: items
          .map((item) => DropdownMenuItem(
                value: item,
                child: Text(item),
              ))
          .toList(),
      onChanged: onChanged,
    );
  }

  Widget _buildCollegeList() {
    return ListView.separated(
      itemCount: _filteredColleges.length,
      separatorBuilder: (_, __) => const Divider(height: 1, thickness: 2),
      itemBuilder: (context, index) {
        final college = _filteredColleges[index];
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            title: Text(
              college["college_name"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Branch: ${college["branch"]}"),
                Text(
                  "Cutoff: ${(college["cutoff_percentile"] as double).toStringAsFixed(2)}%",
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        );
      },
    );
  }
}
