// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ExButtonStyle extends StatelessWidget {
  const ExButtonStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildLoginButton();
  }

  Widget _buildStyleFrom() {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(5.0),
        // ),
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(20.0),
        //   side: const BorderSide(
        //     style: BorderStyle.none,
        //   ),
        // ),
      ),
      onPressed: () => {},
      child: Text("Check Out"),
    );
  }

  Widget _buildMaterialStateProperty() {
    return ElevatedButton(
      child: const Text("Material"),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
        fixedSize: const MaterialStatePropertyAll<Size>(Size(100, 100)),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          return states.contains(MaterialState.pressed)
              ? Colors.blue
              : Colors.red;
        }),
        shape: MaterialStateProperty.all(
          const CircleBorder(
            side: BorderSide(
              color: Colors.brown,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  Widget _buildLoginButton() {
    return Row(
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 200, //double.infinity
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Color(0xffFCB605)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999))),
              ),
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        )
      ],
    );
  }
}
