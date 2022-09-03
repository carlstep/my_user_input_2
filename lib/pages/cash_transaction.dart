import 'package:flutter/material.dart';
import 'package:my_user_input_2/sections/bill_process.dart';

import '../sections/bill_difference.dart';
import '../sections/in_app_adverts.dart';
import '../sections/payment_process.dart';

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
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BillProcess(), // handles the bill amount from user
                  SizedBox(
                    height: 20,
                  ),
                  BillDiff(), // calculates the bill vs payment difference
                  SizedBox(
                    height: 20,
                  ),
                  PaymentProcess(), // handles the payment amount from user
                  SizedBox(
                    height: 40,
                  ),
                  AdContainer(), // for in app advertising
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
