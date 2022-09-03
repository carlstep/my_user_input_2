import 'package:flutter/material.dart';

class PaymentProcess extends StatelessWidget {
  const PaymentProcess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue[100],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('usd'),
              SizedBox(
                width: 20,
              ),
              Text('khr'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text('Section - Payment - Khr slider'),
              SizedBox(
                height: 20,
              ),
              Text('Section - Payment - Usd slider'),
            ],
          ),
        ],
      ),
    );
  }
}
