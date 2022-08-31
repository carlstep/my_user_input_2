import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 340,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amberAccent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: SizedBox(
                            height: 80,
                            width: 280,
                            child: TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 28, fontWeight: FontWeight.w400),
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
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              controller: myController,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                  ),
                                ),
                                labelText: 'enter bill amount',
                                labelStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                suffix: IconButton(
                                  onPressed: () {
                                    myController.clear();
                                  },
                                  icon: const Icon(Icons.clear),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 55,
                        right: 5,
                        child: Padding(
                          padding: EdgeInsets.zero,
                          child: SizedBox(
                            //height: 50,
                            width: 160,
                            child: Card(
                              color: Colors.grey[300],
                              child: Center(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      '${billAmountConverted.toStringAsFixed(2)} $billCurrencyConverted',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text('This is the bill currency - $billCurrency'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
