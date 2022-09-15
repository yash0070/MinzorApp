import 'package:flutter/material.dart';

import '../widget/drop_down.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget TextFieldContainer(String title) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFDB45),
            ),
          ),
          SizedBox(
            height: size.height / 80,
          ),
          Container(
              height: 43,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFFFDB45),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              )),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            right: 0.0,
            left: 0.0,
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/img.png"), fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 170 - 20,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 20,
                  bottom: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Select Your Profile",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFDB45)),
                    ),
                    SizedBox(
                      height: size.height / 80,
                    ),
                    const Text(
                      "This Side Yash ... U say?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4D4D4D),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    DropDownTextField(),
                    SizedBox(
                      height: size.height / 80,
                    ),
                    TextFieldContainer("Name"),
                    SizedBox(
                      height: size.height / 80,
                    ),
                    TextFieldContainer("Age"),
                    SizedBox(
                      height: size.height / 80,
                    ),
                    TextFieldContainer("Mobile Number"),
                    SizedBox(
                      height: size.height / 80,
                    ),
                    TextFieldContainer("Address"),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Container(
                      height: 43,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFDB45),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Text(
                        "I create two Figma Design here ... we can make it so much better")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
