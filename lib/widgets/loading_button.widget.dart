import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  LoadingButton({Key? key, required this.busy, required this.invert, required this.func, required this.text,}) : super(key: key);

  var busy = false;
  var invert = false;
  VoidCallback? func;
  var text = "";

  @override
  Widget build(BuildContext context) {
    return
    busy ? Container(
      alignment: Alignment.center,
      height: 50,
      child: CircularProgressIndicator(
        backgroundColor: Colors.white,
      ),
    )
    : Container(
      margin: EdgeInsets.all(30),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
      ),
      child: ElevatedButton.icon(
        onPressed: func,
        icon: Icon(
          Icons.calculate,
          color: invert
              ? Colors.white
              : Theme.of(context).primaryColor,
          size: 35,
        ),
        label: Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TextStyle(
              color: invert
                  ? Colors.white
                  : Theme.of(context).primaryColor,
              fontSize: 25,
              fontFamily: "Big Shoulders Display",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: invert
              ? Theme.of(context).primaryColor
              : Colors.white,
          elevation: 2.5,
        ),
      ),
    );
  }
}
