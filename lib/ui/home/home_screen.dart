import 'package:corona_stats/ui/home/active_closed_cases_card.dart';
import 'package:corona_stats/ui/home/death_recovered_cases_card.dart';
import 'package:corona_stats/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _leftRightPadding = 36.0;

  @override
  Widget build(BuildContext context) {
    _leftRightPadding = MediaQuery.of(context).size.width * 0.07;
    return Scaffold(
      appBar: AppBarExtension.getAppBar(
          context: context,
          bgColor: ColorExtension.appRed),
      body: Container(
        color: ColorExtension.appBackground,
        child: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: _leftRightPadding),
                    color: ColorExtension.appRed,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Mar 22, 2020, 12:48 GMT",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                        Text("Corona Virus Cases",
                            style:
                                TextStyle(fontSize: 23, color: Colors.white)),
                        Text("316,067",
                            style: TextStyle(fontSize: 50, color: Colors.white))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: ColorExtension.appWhite1,
              margin: EdgeInsets.only(top: 110),
              child: Stack(children: <Widget>[
                SizedBox(
                  height: 80,
                  child: Container(
                    color: ColorExtension.appRed,
                  ),
                ),
                ListView(
                  padding: EdgeInsets.only(
                      left: _leftRightPadding, right: _leftRightPadding),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 182,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child: DeathRecoveredCasesCard(
                                    title: "FATALITIES",
                                    value: "13,598",
                                    tintColor: ColorExtension.appRed),
                              ),
                              Expanded(
                                child: DeathRecoveredCasesCard(
                                    title: "RECOVERED",
                                    value: "95,892",
                                    tintColor: ColorExtension.appGreen),
                              )
                            ],
                          ),
                        ),
                        ActiveClosedCasesCard(
                            title: "ACTIVE CASES", totalValue: "206,577"),
                        ActiveClosedCasesCard(
                            title: "CLOSED CASES", totalValue: "109,490")
                      ],
                    )
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
