import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading_button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class SubmitForm extends StatelessWidget {
  SubmitForm({Key? key, required this.gasCtrl, required this.alcCtrl, required this.busy, required this.submitFunc}) : super(key: key);

  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var busy = false;
  VoidCallback? submitFunc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
          child: Input(
            label: "Gasolina",
            controller: gasCtrl,
          ),
        ),
        Padding(padding: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
          child: Input(
            label: "Álcool",
            controller: alcCtrl,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          func: submitFunc,
          text: 'CALCULAR',
        ),
      ],
    );
  }
}
