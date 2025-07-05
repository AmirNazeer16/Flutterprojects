import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_final/person.dart';
import 'package:project_final/services/database.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Stream? PersonStream;
  getpersonload() async {
    PersonStream = await DatabaseMethods().getPersonData();
    setState(() {});
  }
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
  void initState() {
    getpersonload();
    super.initState();
  }

  Widget AllPersonDetails() {
    return StreamBuilder(
      stream: PersonStream,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot ds = snapshot.data.docs[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Name : " + ds["Name"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                              GestureDetector(
                                  onTap: (){
                                    NameController.text = ds["Name"];
                                    FatherController.text= ds["Father_Name"];
                                    GenderController.text = ds["Gender"];
                                    DOBController.text= ds["DOB"];
                                    CNICController.text=ds["CNIC"];
                                    AgeController.text = ds["Age"];
                                    ReligionController.text = ds["Religion"];
                                    RegController.text = ds["Reg_no"];
                                    DepartmentController.text = ds["Department"];
                                    DegreeController.text = ds["Degree"];
                                    SemesterController.text = ds["Semester"];
                                    CGPAController.text = ds["CGPA"];
                                    EmailController.text=ds["Email"];
                                    PhoneController.text=ds["Phone_no"];
                                    LocationController.text = ds["Location"];


                                    EditPersonDetail(ds ["id"]);
                                  },
                                  child: Icon(Icons.edit, color: Colors.blueAccent)),
                              SizedBox(width: 10,),
                              GestureDetector(
                                  onTap: ()async{
                                    await DatabaseMethods().DeleteUserInfo(ds["id"]);
                                  },
                                  child: Icon(Icons.delete, color: Colors.red,)),



                            ],
                          ),
                          Text(
                            "Father_Name : " + ds["Father_Name"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Gender : " + ds["Gender"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "DOB : " + ds["DOB"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "CNIC : " + ds["CNIC"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Age : " + ds["Age"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.deepPurple,
                            ),
                          ),
                          Text(
                            "Religion : " + ds["Religion"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Reg_no : " + ds["Reg_no"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Department : " + ds["Department"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Degree : " + ds["Degree"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Semester : " + ds["Semester"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "CGPA : " + ds["CGPA"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Email : " + ds["Email"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Phone_no : " + ds["Phone_no"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "Location : " + ds["Location"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
            : Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Person()),
            );
          },
          child: Icon(Icons.add),
        ),
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
                " Record",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
          child: Column(children: [Expanded(child: AllPersonDetails())]),
        ),
      ),
    );

  }
  Future EditPersonDetail(String id) => showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
      content: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: Icon(Icons.cancel),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ],
              ),
              Text("Name", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: NameController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Father_Name", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: FatherController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Gender", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: GenderController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("DOB", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: DOBController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("CNIC", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: CNICController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Age", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: AgeController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Religion", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: ReligionController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Reg_no", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: RegController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Department", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: DepartmentController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              Text("Degree", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: DegreeController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Semester", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: SemesterController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("CGPA", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: CGPAController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Email", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: EmailController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Phone_no", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: PhoneController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              SizedBox(height: 10,),
              Text("Location", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: LocationController,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(border: InputBorder.none),),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent
                  ),
                  onPressed: ()async{
                    Map<String,dynamic> PersonUpdatedMap = {
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
                      "id": id,
                    };
                    await DatabaseMethods().UpdateUserInfo(id, PersonUpdatedMap).then((Value) => Navigator.pop(context));
                  }, child: Text("Update"))
            ],
          ),
        ),
      ),
    ),
  );
}
