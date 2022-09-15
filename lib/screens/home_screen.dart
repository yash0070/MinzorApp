import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget VehicleContainer() {
      return Container(
        height: 215,
        width: 267,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage("images/image.png"),
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffffDB45),
      body: Column(
        children: [
          Container(
            height: size.height / 5.333,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 12,
                      color: Color(0xFF606060),
                    ),
                    SizedBox(
                      width: size.width / 50,
                    ),
                    const Text(
                      'Indore, India',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF606060),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 80,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage("images/wish.png"),
                      height: size.height / 38.09,
                      width: size.width / 17.14,
                    ),
                    SizedBox(
                      width: size.width / 50,
                    ),
                    const Text(
                      "Good Morning, Have a nice Day",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: size.height / 22.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "Search here",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 3),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width / 36,
                    ),
                    Container(
                      height: size.height / 22.22,
                      width: size.width / 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Image.asset("images/vector.png"),
                    )
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: size.height / 80,
          ),

          ///
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Heavy Vehicle",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4D4D4D),
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Container(
                      height: size.height / 3.72,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return VehicleContainer();
                        },
                      ),
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Heavy Vehicle",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4D4D4D),
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Container(
                      height: size.height / 3.72,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return VehicleContainer();
                        },
                      ),
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Heavy Vehicle",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4D4D4D),
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Container(
                      height: size.height / 3.72,
                      margin: EdgeInsets.only(bottom: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return VehicleContainer();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
