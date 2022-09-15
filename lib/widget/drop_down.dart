import 'package:flutter/material.dart';

class DropDownTextField extends StatefulWidget {
  //

  @override
  State<DropDownTextField> createState() => _DropDownTextFieldState();
}

class _DropDownTextFieldState extends State<DropDownTextField> {
  //
  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(top: size.height / 160),
            height: 43,
            width: double.infinity,
            padding: EdgeInsets.only(
              left: size.width / 24,
              right: size.width / 36,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(width: 1, color: Color(0xFFFFDB45)),
            ),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: size.width / 36,
                ),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black,
                      ),
                      iconSize: size.height / 26.66,
                      isExpanded: true,
                      value: valueChoose,
                      onChanged: (value) {
                        setState(() {
                          valueChoose = value as String?;
                        });
                      },
                      items: <String>[
                        'Driver'
                            'Driver'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
