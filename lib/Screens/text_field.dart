import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Username",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,
            fontSize: 13),),
        const SizedBox(height: 15,),
        SizedBox(
          height: 60,
          child: TextField(
            cursorColor: Colors.white,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.white,width: 1)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.white,width: 1)
              ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white,width: 1)
                )
            ),
          ),
        )
      ],
    );
  }
}
