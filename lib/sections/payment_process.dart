import 'package:flutter/material.dart';

class PaymentProcess extends StatefulWidget {
  const PaymentProcess({
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentProcess> createState() => _PaymentProcessState();
}

class _PaymentProcessState extends State<PaymentProcess> {
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
            children: const [
              Text('Usd'),
              SizedBox(
                width: 20,
              ),
              Text('khr'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: const [
              Text('slider 1'),
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
