import 'package:flutter/material.dart';

class BillDiff extends StatelessWidget {
  const BillDiff({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Section - Bill Diff'),
      width: 340,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red[100],
      ),
    );
  }
}
