import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("Account")),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 108.0,
              height: 108.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 4.0,
                ),
              ),
              padding: const EdgeInsets.all(4.0),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/avatar.png",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Tong Cao Cuong",
            style: TextStyle(
                fontFamily: "MadimiOne",
                fontStyle: FontStyle.normal,
                fontSize: 24,
                fontWeight: FontWeight.w800),
          ),
          const Text(
            "Thai Nguyen, Vietnam",
            style: TextStyle(
                fontFamily: "MadimiOne",
                fontStyle: FontStyle.normal,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, "
                      "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
                      "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  // Các widget khác trong Column
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
