import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CET College Predictor',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 134, 52, 52)),
      home: CollegePredictor(),
    );
  }
}

class CollegePredictor extends StatefulWidget {
  const CollegePredictor({super.key});

  @override
  _CollegePredictorState createState() => _CollegePredictorState();
}

class _CollegePredictorState extends State<CollegePredictor> {
  TextEditingController percentileController = TextEditingController();
  List<dynamic> collegeList = [];
  List<dynamic> filteredColleges = [];
  bool isLoading = true;

  String selectedRegion = "Nagpur";
  String selectedBranch = "Computer Science and Engineering";

  final List<String> regions = [
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

  final List<String> branches = [
    "Select Branch",
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
  void initState() {
    super.initState();
    loadCollegeData();
  }

  Future<void> loadCollegeData() async {
    try {
      String data = await rootBundle.loadString('assets/colleges.json');
      setState(() {
        collegeList = json.decode(data);
        isLoading = false;
      });
    } catch (error) {
      print("Error loading college data: $error");
      setState(() => isLoading = false);
    }
  }

  void filterColleges() {
    final userPercentile = double.tryParse(percentileController.text) ?? 0.0;

    setState(() {
      filteredColleges = collegeList.where((college) {
        final matchesPercentile =
            college["cutoff_percentile"] <= userPercentile;
        final matchesRegion = selectedRegion == "All Regions"
            ? true
            : college["college_name"].contains(selectedRegion);
        final matchesBranch = college["branch"] == selectedBranch;

        return matchesPercentile && matchesRegion && matchesBranch;
      }).toList()
        ..sort(
            (a, b) => b["cutoff_percentile"].compareTo(a["cutoff_percentile"]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MHTCET College Predictor"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 197, 229, 255),
        elevation: 4,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: percentileController,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      labelText: "Enter Your CET Percentile",
                      suffixIcon: Icon(Icons.percent),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  DropdownButtonFormField(
                    value: selectedRegion,
                    isExpanded: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    items: regions
                        .map((region) => DropdownMenuItem(
                              value: region,
                              child: Text(region),
                            ))
                        .toList(),
                    onChanged: (value) =>
                        setState(() => selectedRegion = value.toString()),
                  ),
                  SizedBox(height: 16),
                  DropdownButtonFormField(
                    value: selectedBranch,
                    isExpanded: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    items: branches
                        .map((branch) => DropdownMenuItem(
                              value: branch,
                              child: Text(branch),
                            ))
                        .toList(),
                    onChanged: (value) =>
                        setState(() => selectedBranch = value.toString()),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    icon: Icon(Icons.search),
                    label: Text("Find Colleges"),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                      backgroundColor: const Color.fromARGB(255, 227, 239, 255),
                    ),
                    onPressed: filterColleges,
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: filteredColleges.isEmpty
                        ? Center(
                            child: Text(
                              'No colleges found for the selected criteria.',
                              style: TextStyle(fontSize: 16, color: Colors.red),
                            ),
                          )
                        : ListView.separated(
                            itemCount: filteredColleges.length,
                            separatorBuilder: (_, __) => Divider(
                                height: 1, thickness: 2, color: Colors.grey),
                            itemBuilder: (context, index) {
                              final college = filteredColleges[index];
                              return Card(
                                elevation: 4,
                                margin: EdgeInsets.symmetric(vertical: 8),
                                child: ListTile(
                                  title: Text(
                                    college["college_name"],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Branch: ${college["branch"]}"),
                                      Text(
                                        "CutOff: ${college["cutoff_percentile"].toStringAsFixed(2)}%",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ],
                                  ),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios, size: 16),
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
    );
  }
}
