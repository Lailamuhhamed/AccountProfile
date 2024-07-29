import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountScreen(),
    );
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title: Text(
          'Account',
          style: GoogleFonts.acme(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.blue.shade900,
          ),
        ),
      ),
      backgroundColor: Color(0xFF414A96),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 30),
            Text(
              'Laila Mohamed',
              style: GoogleFonts.acme(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Software Developer',
              style: GoogleFonts.robotoCondensed(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(height: 30),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: Text(
                  '01285852775',
                  style: GoogleFonts.adamina(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                title: Text(
                  'lailamohamed20212021@gmail.com',
                  style: GoogleFonts.adamina(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
