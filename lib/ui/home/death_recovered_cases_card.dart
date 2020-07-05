import 'dart:math';

import 'package:flutter/material.dart';
import 'package:corona_stats/utils/extensions.dart';

class DeathRecoveredCasesCard extends StatelessWidget {

  const DeathRecoveredCasesCard({Key key, this.title, this.value, this.tintColor}) : super(key: key);

  final String title;
  final String value;
  final Color tintColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      shadowColor: Colors.black.withAlpha(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: _titleTextStyle(),
                ),
                Text(
                  value,
                  style: TextStyle(color: tintColor, fontSize: 40),
                )
              ],
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 14, top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _buildBars(tintColor: tintColor),
                ),
              )
          )
        ],
      ),
    );Container();
  }

  TextStyle _titleTextStyle() {
    return TextStyle(fontSize: 14, color: ColorExtension.appGrey);
  }

  List<Container> _buildBars({Color tintColor}) {
    var bars = List<Container>();
    for(var i=0;i<12;i++) {
      var rnd = new Random();
      double val = (rnd.nextInt(100)+10)/100;
      val = val > 1.0 ? 1.0 : val;
      double maxVal = val*2 > 1.0 ? 1.0 : val*2;
      Container newContainer = Container(
        width: 2,
        child: Stack(
          children: <Widget>[
            Container(
              alignment: maxVal > 0.7 ? Alignment.center : Alignment.bottomLeft,
              child: FractionallySizedBox(
                heightFactor: maxVal,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorExtension.appWhite3, width: 1.0),
                    color: ColorExtension.appWhite3,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: val,
                child: Container(
                  decoration: BoxDecoration(
                    color: tintColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
      bars.add(newContainer);
    }
    return bars;
  }

}
