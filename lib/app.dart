import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Today')),
      body: Center(child: Text('Welcome to Today Page!')),
    );
  }
}
