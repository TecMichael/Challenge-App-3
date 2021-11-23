import 'package:flutter/material.dart';

class ActiveFilters extends StatelessWidget {
  const ActiveFilters({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32,
          // width: 90,
          decoration: BoxDecoration(
              color: const Color(0xff343639),
              borderRadius: BorderRadius.circular(9)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text,
                  ),
                  const WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
