import 'package:flutter/material.dart';

class AdminSignupPage extends StatefulWidget {
  const AdminSignupPage({super.key});

  @override
  State<AdminSignupPage> createState() => _AdminSignupPage();
}

class _AdminSignupPage extends State<AdminSignupPage> {
  TextEditingController _districtController = TextEditingController();
  TextEditingController _panchayatController = TextEditingController();
  TextEditingController _adminIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin SignUp', style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 33, 243, 152),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          TextField(
            controller: _districtController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: _panchayatController,
            decoration: InputDecoration(labelText: 'Panchayath'),
          ),
          TextField(
            controller: _adminIdController,
            decoration: InputDecoration(labelText: 'Admin ID'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              String district = _districtController.text;
              String panchayath = _panchayatController.text;
              String workerid = _adminIdController.text;

              _districtController.clear();
              _panchayatController.clear();
              _adminIdController.clear();
            },
            child: Text('Sign Up'),
          )
        ]),
      ),
    );
  }
}
