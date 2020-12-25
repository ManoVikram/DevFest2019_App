import 'package:flutter/material.dart';

class TappableCard extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String title;
  final Color color;
  final Color iconColor;
  final List<BoxShadow> boxShadow;

  TappableCard({
    this.onPressed,
    this.icon,
    this.title,
    this.color,
    this.iconColor,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onPressed,
      child: Ink(
        height: size.width > 600 ? size.width * 0.1 : size.height * 0.1,
        width: size.width > 600 ? size.height * 0.2 : size.width * 0.2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: boxShadow,
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
