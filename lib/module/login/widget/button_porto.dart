// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';

class buttonPortofolio extends StatefulWidget {
  final String name;
  final Widget page;
  const buttonPortofolio({required this.name, required this.page, Key? key})
      : super(key: key);

  @override
  State<buttonPortofolio> createState() => _buttonPortofolioState();
}

class _buttonPortofolioState extends State<buttonPortofolio> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(widget.page);
      },
      child: Container(
        height: 92,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(
            width: 1.0,
            color: Colors.grey[200]!,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 24,
              offset: Offset(0, 11),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.view_comfortable,
              size: 32.0,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
