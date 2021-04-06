import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function onPressed;

  const CustomButton({Key key, this.title, this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        color: color,
        textColor: Colors.white,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
