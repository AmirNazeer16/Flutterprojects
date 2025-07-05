import 'package:flutter/material.dart';
import 'package:project_final/services/database.dart';
import 'package:random_string/random_string.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  TextEditingController NameController = new TextEditingController();
  TextEditingController FatherController = new TextEditingController();
  TextEditingController GenderController = new TextEditingController();
  TextEditingController DOBController = new TextEditingController();
  TextEditingController CNICController = new TextEditingController();
  TextEditingController AgeController = new TextEditingController();
  TextEditingController ReligionController = new TextEditingController();
  TextEditingController RegController = new TextEditingController();
  TextEditingController DepartmentController = new TextEditingController();
  TextEditingController DegreeController = new TextEditingController();
  TextEditingController SemesterController = new TextEditingController();
  TextEditingController CGPAController = new TextEditingController();
  TextEditingController EmailController = new TextEditingController();
  TextEditingController PhoneController = new TextEditingController();
  TextEditingController LocationController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                "Person",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
              Text(
                " Firebase Form",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: NameController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Text(
                  "Father_Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: FatherController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: GenderController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "DOB",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: DOBController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "CNIC",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: CNICController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Age",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: AgeController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Religion",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: ReligionController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Reg_no",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: RegController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Department",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: DepartmentController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Degree",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: DegreeController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Semester",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: SemesterController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "CGPA",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: CGPAController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: EmailController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Phone_no",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: PhoneController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: LocationController,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                  ),
                  onPressed: () async {
                    String Id = randomAlphaNumeric(5);
                    Map<String, dynamic> PersonInfoMap = {
                      "Name": NameController.text,
                      "Father_Name": FatherController.text,
                      "Gender": GenderController.text,
                      "DOB": DOBController.text,
                      "CNIC": CNICController.text,
                      "Age": AgeController.text,
                      "Religion": ReligionController.text,
                      "Reg_no": RegController.text,
                      "Department": DepartmentController.text,
                      "Degree": DegreeController.text,
                      "Semester": SemesterController.text,
                      "CGPA": CGPAController.text,
                      "Email": EmailController.text,
                      "Phone_no": PhoneController.text,
                      "Location": LocationController.text,
                      "id": Id,
                    };
                    await DatabaseMethods().addPersonRecord(PersonInfoMap, Id);
                    Fluttertoast.showToast(msg: "Record Added Successfully!!");
                  },
                  child: Text(
                    "Add Record",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
