import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginex(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class loginex extends StatefulWidget {
  @override
  _loginexState createState() => _loginexState();
}

Widget title() {
  return Text(
    'Login',
    style: TextStyle(
      fontSize: 20,
    ),
  );
}

Widget txtEmail() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      // အဲ့ကောင် က နှိပ်လိုက်ရင် လိုတဲ့ ပုံစံ num or string
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        labelText: "Email",
        // hintText: "Enter Your Mail",
        border: InputBorder.none, //အောက်လိုင်းပျောက်သွား
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.greenAccent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.greenAccent),
        ),
        //border ထဲ နှိပ်လိုက်ရင်အလုပ်လုပ်တဲ့ချိန်s
      ),
    ),
  );
}

Widget txtPassword() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true, // pw ပုံစံပြောင်းလိုက်တာ
      // အဲ့ကောင် က နှိပ်လိုက်ရင် လိုတဲ့ ပုံစံ num or string
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock), //icon ထည့်တာ
        labelText: "Password",
        // hintText: "Enter Your Mail",
        border: InputBorder.none, //အောက်လိုင်းပျောက်သွား
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.greenAccent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.greenAccent),
        ),
        //border ထဲ နှိပ်လိုက်ရင်အလုပ်လုပ်တဲ့ချိန်s
      ),
    ),
  );
}

Widget fgPassword() {
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text('Foreget Password'),
    ),
  );
}

Widget loginbutton() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

class _loginexState extends State<loginex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  title(),
                  SizedBox(
                    height: 20,
                  ),
                  txtEmail(),
                  SizedBox(
                    height: 20,
                  ),
                  txtPassword(),
                  SizedBox(
                    height: 20,
                  ),
                  fgPassword(),
                  SizedBox(
                    height: 20,
                  ),
                  loginbutton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
