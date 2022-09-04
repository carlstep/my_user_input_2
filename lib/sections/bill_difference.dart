import 'package:flutter/material.dart';

class BillDiff extends StatefulWidget {
  const BillDiff({
    Key? key,
  }) : super(key: key);

  @override
  State<BillDiff> createState() => _BillDiffState();
}

class _BillDiffState extends State<BillDiff> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      //height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red[100],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 12, 4, 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // USD container
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                Container(
                  // KHR container
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
