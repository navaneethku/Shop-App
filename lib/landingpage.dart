import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:q_express/cart.dart';
import 'package:q_express/main.dart';
import 'package:q_express/stores.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  TextEditingController _location = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 176, 174, 174),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 241, 100, 52),
          title: Text("Welcome Page"),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    scale: 2,
                  ),
                  Text(
                    "Welcome,",
                    style: TextStyle(fontSize: 52, color: Colors.white),
                  ),
                  Text(
                    "Q-Express!",
                    style: TextStyle(fontSize: 52, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                      "Unlock the world of regular and rescued products by setting up your delivery address."),
                  SizedBox(height: 20),
                  Text(
                    "SELECT LOCATION",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Provide Delivery Location',
                    style: TextStyle(
                        color: Color.fromARGB(255, 241, 100, 52),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              TextField(
                                controller: _location,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter Location'),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Stores(
                                                location: _location.text)));
                                  },
                                  child: Text("Go to Main Page")),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => MyHomePage()));
                  //   },
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  //     child: Container(
                  //       padding: EdgeInsets.all(20),
                  //       decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 241, 100, 52),
                  //           borderRadius: BorderRadius.circular(12)),
                  //       child: Center(
                  //         child: Text(
                  //           'Welcome',
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 18),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
