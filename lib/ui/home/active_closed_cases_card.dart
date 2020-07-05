import 'package:flutter/material.dart';
import 'package:corona_stats/utils/extensions.dart';

class ActiveClosedCasesCard extends StatelessWidget {

  const ActiveClosedCasesCard({Key key, this.title, this.totalValue}) : super(key: key);

  final String title;
  final String totalValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black.withAlpha(18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      margin: EdgeInsets.only(top: 10),
      child: Container(
        height: 133,
        padding: EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 15),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: _titleTextStyle()),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      totalValue,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 12,
                            height: 11,
                            child: ImageExtension.downArrowGreen,
                          ),
                          SizedBox(width: 9),
                          Text("95%", style: TextStyle(fontSize: 20))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 21),
                          Text(
                            "Mild Condition",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14, color: ColorExtension.appGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 13),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 12,
                            height: 11,
                            child: ImageExtension.upArrowRed,
                          ),
                          SizedBox(width: 9),
                          Text("5%", style: TextStyle(fontSize: 20))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 21),
                          Text(
                            "Critical",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14, color: ColorExtension.appGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle _titleTextStyle() {
    return TextStyle(fontSize: 14, color: ColorExtension.appGrey);
  }
}
