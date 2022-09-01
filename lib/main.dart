import 'package:flutter/material.dart';
import 'package:my_user_input_2/sections/bill_amount_process.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'User Input',
      home: BillProcess(),
    );
  }
}
