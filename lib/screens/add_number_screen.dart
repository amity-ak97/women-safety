import 'package:flutter/material.dart';
import 'package:women_safety/db_helper.dart';
import 'package:women_safety/widgets/custom_button.dart';

class AddNumberScreen extends StatefulWidget {
  @override
  _AddNumberScreenState createState() => _AddNumberScreenState();
}

class _AddNumberScreenState extends State<AddNumberScreen> {
  List<AddNumberTextField> addNumberTextFieldList = [
    AddNumberTextField(),
  ];

  void addNumberTextField() {
    if (addNumberTextFieldList.length < 5) {
      addNumberTextFieldList.add(AddNumberTextField());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Maximum numbers reached!'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Numbers'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Column(
                  children: addNumberTextFieldList,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        addNumberTextField();
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add),
                        Text('Add another number'),
                      ],
                    )),
                SizedBox(
                  height: 10.0,
                ),
                CustomButton(
                  title: 'ADD',
                  color: Colors.blue,
                  onPressed: () async {
                    List<Map<String, dynamic>> i =
                        await DatabaseHelper.instance.queryAll();
                    print(i);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddNumberTextField extends StatelessWidget {
  const AddNumberTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Enter Phone Number',
        labelStyle: TextStyle(fontSize: 14.0),
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 10.0,
        ),
      ),
      style: TextStyle(fontSize: 14.0),
    );
  }
}
