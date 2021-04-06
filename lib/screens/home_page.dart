import 'package:flutter/material.dart';
import 'package:women_safety/widgets/custom_button.dart';
import 'package:women_safety/screens/add_number_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 90.0,
                child: Text(
                  'EMERGENCY',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              CustomButton(
                title: 'ADD NUMBERS',
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddNumberScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
