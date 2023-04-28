import 'package:flutter/material.dart';

class Police_HomeScreen extends StatefulWidget {
  const Police_HomeScreen({super.key});

  @override
  State<Police_HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Police_HomeScreen> {
  bool switchkey = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 241, 222, 19),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  switchkey
                                      ? Text("Name: Soumyaranjan Dash")
                                      : Text(""),
                                  switchkey
                                      ? Text("id: hs78ijihjsj682y")
                                      : Text(""),
                                ],
                              ),
                            ),
                          ],
                        ),

                        // Icon(
                        // Icons.toggle_on,
                        // size: 30,
                        // color: Colors.red,)
                        Switch(
                            value: switchkey,
                            onChanged: (value) {
                              switchkey = value;
                              setState(() {});
                            }),
                      ],
                    )
                  ],
                ),
              ),

              //SizedBox(height: 160),
              switchkey
                  ? Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 38, 92, 40),
                        size: 80,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 160.0),
                      child: Center(
                          child: Text(
                        "OFFLINE MODE",
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
              switchkey
                  ? Container()
                  : Center(
                      child: Text(
                      "please turn the switch on for other purposes",
                      style: TextStyle(
                          fontSize: 17.5, color: Colors.grey.shade600),
                    )),

              switchkey
                  ? Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Text(
                            "Notifications",
                            style: TextStyle(fontSize: 19),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications)),
                        ],
                      ),
                    )
                  : Container(),
              switchkey
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 200,
                        width: 350,
                        color: Colors.grey.shade400,
                      ),
                    )
                  : Container(),

              switchkey
                  ? Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(fontSize: 19),
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.location_on)),
                        ],
                      ),
                    )
                  : Container(),
              switchkey
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 200, width: 350,
                        // color: Colors.grey.shade400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.technipages.com/wp-content/uploads/2020/11/fix-google-maps-not-auto-rotating.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
