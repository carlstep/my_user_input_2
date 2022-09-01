import 'package:flutter/material.dart';
import 'package:my_user_input_2/sections/bill_process.dart';

class CashTransaction extends StatelessWidget {
  const CashTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash Transaction Page',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text(
            'Cash Transaction',
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BillProcess(),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Section - Bill Diff'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Section - Payment '),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
