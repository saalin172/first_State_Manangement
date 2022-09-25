import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/counter_provider.dart';

class SecendScreen extends StatelessWidget {
  const SecendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text(
          "Screen One Value Is ${context.watch<CounterProvider>().counter}",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      )),
    );
  }
}
