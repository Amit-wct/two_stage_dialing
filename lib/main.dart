import 'package:flutter/material.dart';

class DialerScreen extends StatefulWidget {
  @override
  _DialerScreenState createState() => _DialerScreenState();
}

class _DialerScreenState extends State<DialerScreen> {
  String phoneNumber = '';
  String selectedContact = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two-Stage Dialing'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: selectedContact,
              hint: Text('Select a contact'),
              onChanged: (value) {
                setState(() {
                  selectedContact = value!;
                });
              },
              items: [
                DropdownMenuItem(
                  value: 'John Doe',
                  child: Text('John Doe'),
                ),
                DropdownMenuItem(
                  value: 'Jane Smith',
                  child: Text('Jane Smith'),
                ),
                // Add more contact options here
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement call initiation logic here
              },
              child: Text('Call'),
            ),
          ],
        ),
      ),
    );
  }
}
