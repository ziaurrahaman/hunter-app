import 'package:flutter/material.dart';

class BrochureListItem extends StatelessWidget {
  final String marketName;

  BrochureListItem({this.marketName});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
        height: 130,
        width: 340,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8),
              height: 110,
              width: 105,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(4))),
            ),
            Container(
              width: 200,
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    marketName,
                    style: TextStyle(
                        color: Color(0xff000c4f), fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 38.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: Text(
                          'Start: 30 Jan 2020',
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: Text(
                          'End: 30 Dec 2020',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        child: Text(
                          '30 Days left',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
