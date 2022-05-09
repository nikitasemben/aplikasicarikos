import 'package:flutter/material.dart';


class MailItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SafeArea(
          child: new Container(
              color: Colors.white,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Mail'),
                    ]),
              )),
        ));
  }
}
