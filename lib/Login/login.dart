import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool toggleState=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: ElevatedButton(
                    onPressed: null,
                    child: (toggleState
                        ?( Text('Blink'))
                        :(Text('Stop Blinking'))
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}