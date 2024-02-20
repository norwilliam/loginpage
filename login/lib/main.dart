import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final TextField _txtUserName = TextField(
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      onChanged: (text) {
        setState(() {
          userName = text;
        });
      },
    );

    final TextField _txtPassword = TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      obscureText: true,
      onChanged: (text) {
        setState(() {
          password = text;
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              child: Image.asset('images/profile1.png'),
            ),
            SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: Border.all(width: 1.2, color: Colors.black12),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              child: _txtUserName,
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: Border.all(width: 1.2, color: Colors.black12),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              child: _txtPassword,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      userName: userName,
                      password: password,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String userName;
  final String password;

  SecondPage({required this.userName, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Welcome $userName"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Username : $userName",
              style: TextStyle(fontSize: 38),
            ),
            Text(
              "Password : $password",
              style: TextStyle(fontSize: 38),
            ),
          ],
        ),
      ),
    );
  }
}

// นายณัฐภัทร วิเชียรโสภณ 652021048