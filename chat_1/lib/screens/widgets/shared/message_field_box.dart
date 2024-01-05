import 'package:flutter/material.dart';
class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onvalue;

  final textController = TextEditingController();
  final focusNode = FocusNode();

  final outLineInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent
    ),
    borderRadius: BorderRadius.circular(40)
  );
  

  MessageFieldBox({super.key, required this.onvalue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textController,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: "Digita tu mensaje terminado con un '?'",
        enabledBorder: outLineInputBorder,
        filled: true,
        focusedBorder: outLineInputBorder,
        suffixIcon: IconButton(
          icon: Icon(Icons.send_outlined),
          onPressed: (){
            final textValue = textController.value.text;
            print('Submitted value = ${textValue}');
            textController.clear();
            focusNode.requestFocus();
            onvalue(textValue);
          } ,
        )
      ),
      onFieldSubmitted: (value) {
        print('Submitted ${value}');
        textController.clear();
        focusNode.requestFocus();
        onvalue(value);
      },
    );
  }
}
