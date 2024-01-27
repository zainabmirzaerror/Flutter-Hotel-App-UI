import 'package:flutter/material.dart';
import 'package:hotel_app_ui/screens/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    String _searchText = '';
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Page 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Page 3',
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hello, Alex",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 158, 158, 158)),
                        )),
                    SizedBox(
                      height: screenHeight * 0.001,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            // Your content for the first part of the row
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Find Deals',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              // Your content for the first part of the row

                              child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              child: Container(
                                height: screenHeight * 0.06,
                                width: screenHeight * 0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/dpPic.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    TextField(
                      controller: _searchController,
                      onChanged: (value) {
                        setState(() {
                          _searchText = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Search City',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            // Your content for the first part of the row

                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Popular Places',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              // Your content for the first part of the row

                              child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                child: GestureDetector(
                              // onTap: () => {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => WelcomeScreen()),
                              //   )
                              // },
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 158, 158, 158)),
                              ),
                            )),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                height: screenHeight * 0.20,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage("assets/miami.jpg"),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 10),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Miami",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            " 5062 propeties",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Container(
                                height: screenHeight * 0.20,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/singapore.jpg'),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 10),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Singapore",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            " 5062 propeties",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Container(
                                height: screenHeight * 0.20,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/welcomescreen2.jpg"),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 10),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Vietnam City",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            " 5062 propeties",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                        SizedBox(width: screenHeight * 0.01),
                        Expanded(
                            child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                height: screenHeight * 0.10,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Color(0xFF5845fc),
                                    image: DecorationImage(
                                        image: AssetImage(""),
                                        fit: BoxFit.cover)),
                                child: Center(
                                  child: Text(
                                    "Holiday Deals\n20% off till 31st Dec",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Container(
                                height: screenHeight * 0.20,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/welcomescreen2.jpg"),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 10),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Vietnam City",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "5062 propeties",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Container(
                                height: screenHeight * 0.20,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/welcomescreen2.jpg"),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 10),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Vietnam City",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            " 5062 propeties",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              )),
        ),
      )),
    );
  }
}
