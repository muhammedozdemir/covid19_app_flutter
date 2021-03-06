import 'package:flutter/material.dart';
import 'package:fluttercovid19/utils/text_styles.dart';

class CardWidget extends StatelessWidget {
  final String statusLabel;
  final int status;
  final MaterialColor statusColor;

  CardWidget(this.statusLabel, this.status, this.statusColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.transparent,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                statusLabel,
                style: TextStyles.statusLabelTextStyle,
              ),
            ),
            Text(
              status.toString(),
              style: TextStyle(
                  fontSize: 24,
                  color: statusColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
