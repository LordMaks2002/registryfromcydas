import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();
  final String currentEmail = "gmail@gmail.com";
  final String currentPassword = '12345678';
  bool stateButton() {
    return _controller.text ==
            currentEmail && //_controller1.text == currentPassword; воно приймає то що введено в полі для ведення і порівеює//
        _controller1.text ==
            currentPassword; //_controller1.text == currentPassword; воно приймає то що введено в полі для ведення і порівеює//
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Center(
            child: Container(
              width: 500,
              height: 500,
              color: Colors.grey,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: _controller,
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12),
                          )),
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: _controller1,
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black,
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12),
                          )),
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      onPressed: stateButton()
                          ? () {
                              print("tese");
                            }
                          : null,
                      style: TextButton.styleFrom(
                        side: BorderSide(
                            color: _controller.text.isNotEmpty &&
                                    _controller1.text.isNotEmpty
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Color.fromARGB(2, 0, 0, 0)),
                      ),
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
