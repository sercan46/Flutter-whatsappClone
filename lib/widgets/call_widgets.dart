import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'To start calling contacts who have WhatsApp, tap',
                      style: TextStyle(color: Colors.grey[500], fontSize: 17)),
                  WidgetSpan(
                      child: Icon(
                    Icons.add_call,
                    color: Colors.grey[500],
                  )),
                  TextSpan(
                      text: ' at the bottom of your screen',
                      style: TextStyle(color: Colors.grey[500], fontSize: 17)),
                ]),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 55,
                  height: 55,
                  child: FloatingActionButton(
                      backgroundColor: Color(0xFF00A884),
                      onPressed: () {},
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_call, color: Colors.white))),
                )),
          ),
        )
      ],
    );
  }
}
