// import 'dart:convert'; //encode and decode json data

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// ///json efile ko load

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'CET College Predictor',
//       theme: ThemeData(primaryColor: const Color.fromARGB(255, 253, 193, 193)),
//       home: ApnCollege(),
//     );
//   }
// }

// class ApnCollege extends StatefulWidget {
//   const ApnCollege({super.key});

//   @override
//   _CollegePredictorState createState() => _CollegePredictorState();
// }

// class _CollegePredictorState extends State<ApnCollege> {
//   TextEditingController percentileinput = TextEditingController();
//   List<dynamic> collegeList = [];
//   List<dynamic> filteredColleges = [];
//   bool isget = true;

//   String selectedRegion = "Nagpur";
//   String selectedBranch = "Computer Science and Engineering";

//   final List<dynamic> regions = [
//     "All Regions",
//     "Shegaon",
//     "Amravati",
//     "Akola",
//     "Pusad",
//     "Chikhali",
//     "Yavatmal",
//     "Buldhana",
//     "Nanded",
//     "Nagpur",
//     "Pune",
//     "Kopargaon",
//     "Pimpri",
//     "Lavale",
//     "Sangli",
//     "Maharashtra",
//     "Solapur",
//     "Pandharpur",
//     "Ichalkaranji",
//     "Kolhapur",
//     "Warananagar",
//     "Budhgaon",
//     "Satara",
//     "Malegaon-Baramati",
//     "Jaysingpur",
//     "Baramati",
//     "Dumbarwadi",
//     "Bhor",
//     "Kuran",
//     "Barshi",
//     "Miraj",
//     "Sangola",
//     "Akluj",
//     "Gadhinglaj",
//     "Lonavala",
//     "Ravet",
//     "Talegaon",
//     "Yelur"
//   ];

//   final List<String> branches = [
//     "All Branch",
//     "Information Technology",
//     "Electrical Engg[Electronics and Power]",
//     "Electronics and Telecommunication Engg",
//     "Mechanical Engineering",
//     "Civil Engineering",
//     "Computer Science and Engineering",
//     "Electrical Engineering",
//     "Artificial Intelligence (AI) and Data Science",
//     "Computer Engineering",
//     "Mechatronics Engineering",
//     "Electronics and Computer Engineering",
//     "Instrumentation Engineering",
//     "Automation and Robotics",
//     "Artificial Intelligence and Data Science",
//     "Artificial Intelligence and Machine Learning",
//     "Fashion Technology",
//     "Technical Textiles",
//     "Man Made Textile Technology",
//     "Textile Chemistry",
//     "Computer Science and Engineering(Artificial)",
//     "Chemical Engineering",
//     "Computer Science and Engineering (Artificial Intelligence)",
//     "Computer Science and Engineering (Data Science)",
//     "Bio Technology",
//     "Computer Science and Business Systems",
//     "Civil and Environmental Engineering",
//     "Electronics and Computer Science",
//     "Robotics and Automation",
//     "Instrumentation and Control Engineering",
//     "Computer Science and Engineering (Internet of Things)",
//     "Computer Engineering (Software Engineering)",
//     "Printing and Packing Technology",
//     "Electronics Engineering (VLSI Design)",
//     "Aeronautical Engineering",
//     "Food Technology",
//     "Computer Science and Design",
//     "Artificial Intelligence (AI)",
//     "Electronics and Telecommunication Engineering",
//     "Computer Science and Engineering (Cyber Security)",
//     "Robotics and Artificial Intelligence",
//     "Electronics Engineering (VLSI Design and Technology)",
//     "Electronics and Communication (Advanced Communication Systems)",
//     "Computer Science",
//     "Plastic and Polymer Engineering",
//     "Paper and Pulp Technology",
//     "Petro Chemical Engineering",
//     "Oil Technology",
//     "Surface Coating Technology",
//     "Manufacturing Science and Engineering",
//     "Metallurgy and Material Technology",
//     "Cyber Security"
//   ];

//   @override
//   void initState() {
//     //init initialize karta hai ek hi baar call hoga ye method intialize task ko handle karega
//     super
//         .initState(); //state class ka lifecycle method init object on scren super base class app me bug aur unexpected behvoir hoga if not use
//     loadCollegeData(); //colg data load
//   }

//   Future<void> loadCollegeData() async {
//     //dont block ui runs in Bg boleto fture asynchrnous fun
// try{ String clgnames = await rootBundle.loadString(
//         'assets/colleges.json'); //awit means task hone pr dusra code run nhito wait
//      setState(() {
//         collegeList = json.decode(clgnames);
//         isget = false;
//       });}
   
//      catch(e) {
//       setState(() {
//         print("Failed to load college data: ${e.toString()}");
//         isget = false;
//       });
//     }
//   }

//   void filterColleges() {
//     final userPercentile = double.parse(
//         percentileinput.text); //same hai like input String to int me hora

//     setState(() {
//       filteredColleges = collegeList.where((college) {
//         var mPercentile = college["cutoff_percentile"] <= userPercentile;
//         var mRegion = selectedRegion == "All Regions"
//             ? true
//             : college["college_name"].contains(selectedRegion);
//         var mBranch = college["branch"] == "All Branch"
//             ? true
//             : college["college_name"].contains(selectedBranch) ||
//                 college["college_name"].contains(selectedRegion);

//         return mPercentile && mRegion && mBranch;
//       }).toList()
//         ..sort(
//             (a, b) => b["cutoff_percentile"].compareTo(a["cutoff_percentile"]));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("MHTCET College Predictor"),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(255, 197, 229, 255),
//         elevation: 4,
//       ),
//       body: isget
//           ? Center(child: CircularProgressIndicator())
//           : Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   TextField(
//                     controller: percentileinput,
//                     keyboardType:
//                         TextInputType.numberWithOptions(decimal: true),
//                     decoration: InputDecoration(
//                       labelText: "Enter Your Percentile",
//                       suffixIcon: Icon(Icons.percent),
//                       filled: true,
//                       fillColor: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   DropdownButtonFormField(
//                     value: selectedRegion,
//                     isExpanded: true,
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white,
//                     ),
//                     items: regions
//                         .map((region) => DropdownMenuItem(
//                               value: region,
//                               child: Text(region),
//                             ))
//                         .toList(),
//                     onChanged: (value) =>
//                         setState(() => selectedRegion = value.toString()),
//                   ),
//                   SizedBox(height: 16),
//                   DropdownButtonFormField(
//                     value: selectedBranch,
//                     isExpanded: true,
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white,
//                     ),
//                     items: branches
//                         .map((branch) => DropdownMenuItem(
//                               value: branch,
//                               child: Text(branch),
//                             ))
//                         .toList(),
//                     onChanged: (value) =>
//                         setState(() => selectedBranch = value.toString()),
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton.icon(
//                     icon: Icon(Icons.find_in_page),
//                     label: Text("Find Colleges"),
//                     style: ElevatedButton.styleFrom(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 32, vertical: 14),
//                       backgroundColor: const Color.fromARGB(255, 227, 239, 255),
//                     ),
//                     onPressed: filterColleges,
//                   ),
//                   SizedBox(height: 24),
//                   Expanded(
//                     child: ListView.separated(
//                       itemCount: filteredColleges.length,
//                       separatorBuilder: (_, __) =>
//                           Divider(height: 1, thickness: 2, color: Colors.grey),
//                       itemBuilder: (context, index) {
//                         final college = filteredColleges[index];
//                         return Card(
//                           elevation: 4,
//                           margin: EdgeInsets.symmetric(vertical: 8),
//                           child: ListTile(
//                             title: Text(
//                               college["college_name"],
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             subtitle: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text("Branch: ${college["branch"]}"),
//                                 Text(
//                                   "CutOff: ${college["cutoff_percentile"].toStringAsFixed(2)}%",
//                                   style: TextStyle(fontStyle: FontStyle.italic),
//                                 ),
//                               ],
//                             ),
//                             trailing: Icon(Icons.arrow_forward_ios, size: 16),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }
