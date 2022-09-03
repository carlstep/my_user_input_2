import 'package:flutter/material.dart';

class AdContainer extends StatefulWidget {
  const AdContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<AdContainer> createState() => _AdContainerState();
}

class _AdContainerState extends State<AdContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Section - IAA'),
      width: 340,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.green[100],
      ),
    );
  }
}
