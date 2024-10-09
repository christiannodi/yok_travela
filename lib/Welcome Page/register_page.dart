import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Akun'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: InputDecoration(labelText: 'username')),
            TextField(decoration: InputDecoration(labelText: 'email')),
            TextField(decoration: InputDecoration(labelText: 'password')),
            TextField(decoration: InputDecoration(labelText: 're-password')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle registration
              },
              child: Text('register'),
            ),
          ],
        ),
      ),
    );
  }
}
