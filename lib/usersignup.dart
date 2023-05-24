import 'package:flutter/material.dart';

class UserSignUpPage extends StatefulWidget {
  @override
  _UserSignUpPageState createState() => _UserSignUpPageState();
}

class _UserSignUpPageState extends State<UserSignUpPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _districtController = TextEditingController();
  TextEditingController _panchayatController = TextEditingController();
  TextEditingController _wardController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _districtController,
              decoration: InputDecoration(labelText: 'District'),
            ),
            TextField(
              controller: _panchayatController,
              decoration: InputDecoration(labelText: 'Panchayat'),
            ),
            TextField(
              controller: _wardController,
              decoration: InputDecoration(labelText: 'Ward'),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Perform sign-up logic here
                String name = _nameController.text;
                String district = _districtController.text;
                String panchayat = _panchayatController.text;
                String ward = _wardController.text;
                String phone = _phoneController.text;

                // Perform sign-up action or validation
                // ...

                // Clear the text fields
                _nameController.clear();
                _districtController.clear();
                _panchayatController.clear();
                _wardController.clear();
                _phoneController.clear();
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
