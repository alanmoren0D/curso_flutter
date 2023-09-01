import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget 
{
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) 
  {

    final textController= TextEditingController();
    final FocusNode focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = UnderlineInputBorder
    (
      borderSide: const BorderSide
      (
        color: Colors.transparent
      ),
      borderRadius: BorderRadius.circular(10)
    );

    final inputDecoration = InputDecoration
      (
        hintText: 'End your message with a ?',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton
        (
          icon: const Icon(Icons.send_sharp), 
          onPressed: () 
          {  
            final textValue = textController.value.text;
            print('button $textValue');
            textController.clear();
          },
        ) 
      );

    return TextFormField
    (
      onTapOutside: (event) 
      {
        focusNode.unfocus();  
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value)
      {
        print('submit the value ${value}');
        textController.clear();
        focusNode.requestFocus();
      }
    );
  }
}