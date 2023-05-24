import 'package:flutter/material.dart';

class WorkerSignupPage extends StatefulWidget {
  const WorkerSignupPage({super.key});

  @override
  State<WorkerSignupPage> createState() => _WorkerSignupPageState();
}

class _WorkerSignupPageState extends State<WorkerSignupPage> {
  TextEditingController _districtController = TextEditingController();
  TextEditingController _panchayatController = TextEditingController();
  TextEditingController _workerIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worker SignUp', style: TextStyle(color: Colors.black)),
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
            controller: _workerIdController,
            decoration: InputDecoration(labelText: 'Worker ID'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              String district = _districtController.text;
              String panchayath = _panchayatController.text;
              String workerid = _workerIdController.text;

              _districtController.clear();
              _panchayatController.clear();
              _workerIdController.clear();
            },
            child: Text('Sign Up'),
          )
        ]),
      ),
    );
  }
}
