import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Input extends StatelessWidget {
  Input({Key? key, required this.label, required this.controller}) : super(key: key);

  var label = "";
  var controller = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: "Big Shoulders Display",
            ),
          ),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display",
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),),
      ],
    );
  }
}
