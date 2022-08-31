import 'package:flutter/material.dart';

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

class BillProcess extends StatefulWidget {
  const BillProcess({Key? key}) : super(key: key);

  @override
  State<BillProcess> createState() => _BillProcessState();
}

class _BillProcessState extends State<BillProcess> {
  final myController = TextEditingController();
  double billAmount = 0;
  String billCurrency = 'USD';
  double billAmountConverted = 0;
  String billCurrencyConverted = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bill Process'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // TODO - set a default value to 0
                onChanged: (value) {
                  setState(() {
                    billAmount = double.parse(value);
                    if (billAmount >= 1000) {
                      billCurrency = 'KHR';
                      billAmountConverted = billAmount / 4000;
                      billCurrencyConverted = 'USD';
                    } else {
                      billCurrency = 'USD';
                      billAmountConverted = billAmount * 4000;
                      billCurrencyConverted = 'KHR';
                    }
                  });
                },
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                controller: myController,
                decoration: InputDecoration(
                  suffix: IconButton(
                    onPressed: () {
                      myController.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                  '${billAmountConverted.toStringAsFixed(2)} $billCurrencyConverted'),
              const SizedBox(
                height: 20,
              ),
              Text('This is the bill currency - $billCurrency'),
            ],
          ),
        ),
      ),
    );
  }
}
