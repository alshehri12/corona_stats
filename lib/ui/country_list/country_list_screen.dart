import 'package:corona_stats/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_section_table_view/flutter_section_table_view.dart';

class CountryListScreen extends StatefulWidget {
  @override
  _CountryListScreenState createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarExtension.getAppBar(
          context: context, bgColor: ColorExtension.appBackground),
      body: Container(
        color: ColorExtension.appBackground,
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SectionTableView(
                  sectionCount: 7,
                  numOfRowInSection: (section) {
                    return section == 0 ? 3 : 4;
                  },
                  cellAtIndexPath: (section, row) {
                    return Container(
                      height: 60.0,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 53.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.flag),
                                  SizedBox(width: 6),
                                  Text(
                                    "Country name",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: ColorExtension.appDarkGrey,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    );
                  },
                  headerInSection: (section) {
                    return Container(
                      height: 60.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 53.0, top: 23),
                        child: Text('Header $section'),
                      ),
                    );
                  },
                  divider: Container(
                    color: ColorExtension.appBackground,
                    height: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
