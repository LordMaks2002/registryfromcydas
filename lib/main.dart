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
  String registrationMessage = '';
  bool colorChange = false;

  bool stateButton() {
    return _controller.text == currentEmail &&
        _controller1.text == currentPassword;
  }

  void submitActive() {
    setState(() {
      registrationMessage = 'Ви зайшли в профіль';
      colorChange = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Padding(
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
                                  submitActive();
                                }
                              : null,
                          style: TextButton.styleFrom(
                            backgroundColor:
                                colorChange ? Colors.green : Colors.grey,
                            side: BorderSide(
                                color: _controller.text.isNotEmpty &&
                                        _controller1.text.isNotEmpty
                                    ? Color.fromARGB(255, 255, 255, 255)
                                    : Color.fromARGB(2, 0, 0, 0)),
                          ),
                          child: Text('Submit'),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          registrationMessage,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 0, 255, 8),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                'Email: $currentEmail\nPassword: $currentPassword',
                style: TextStyle(color: Colors.black, fontSize: 12),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
