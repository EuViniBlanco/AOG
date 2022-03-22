import 'package:aog/widgets/loading_button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  Success({Key? key, required this.result, required this.reset}) : super(key: key);

  var result = "";
  VoidCallback? reset;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          LoadingButton(
            busy: false,
            invert: true,
            func: reset,
            text: 'CALCULAR NOVAMENTE',
          ),
        ],
      ),
    );
  }
}
