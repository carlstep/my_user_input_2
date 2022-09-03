import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
  String billCurrencyFlag = '';
  String billCurrencyFlagConverted = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return billAmountInput();
  }

  Container billAmountInput() {
    return Container(
      width: 340,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.amber[100],
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: SizedBox(
                  height: 80,
                  width: 240,
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.1,
                    ),
                    onChanged: (value) {
                      setState(() {
                        billAmount = double.parse(value);
                        if (billAmount >= 1000) {
                          billCurrency = 'KHR';
                          billAmountConverted = billAmount / 4000;
                          billCurrencyConverted = 'USD';
                          billCurrencyFlag = '🇰🇭';
                          if (billCurrencyConverted == 'USD') {
                            billCurrencyFlagConverted = '🇺🇸';
                          }
                        } else {
                          billCurrency = 'USD';
                          billAmountConverted = billAmount * 4000;
                          billCurrencyConverted = 'KHR';
                          billCurrencyFlag = '🇺🇸';
                          if (billCurrencyConverted == 'KHR') {
                            billCurrencyFlagConverted = '🇰🇭';
                          } // TODO - use digit grouping for large numbers
                        }
                      });
                    },
                    inputFormatters: [LengthLimitingTextInputFormatter(7)],
                    //maxLength: 7,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    controller: myController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
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
                      hintText: 'enter amount',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      labelText: 'bill amount',
                      labelStyle: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700],
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      suffixText: billCurrencyFlag,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 5,
              child: Padding(
                padding: EdgeInsets.zero,
                child: SizedBox(
                  //height: 50,
                  width: 200,
                  child: Card(
                    elevation: 5,
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${billAmountConverted.toStringAsFixed(2)} ',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.1,
                                ),
                              ),
                              Text(
                                billCurrencyFlagConverted,
                                style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(40, 40),
                  primary: Colors.red,
                  //onPrimary: Colors.white,
                  padding: const EdgeInsets.all(2),
                  side: BorderSide.none,
                ),
                onPressed: () {
                  myController.clear();
                },
                child: const Icon(
                  Icons.restart_alt_outlined,
                  size: 40,
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              child: Text('Bill Currency - $billCurrency'),
            ),
          ],
        ),
      ),
    );
  }
}
