import 'package:flutter/material.dart';

class BrochureListItem extends StatelessWidget {
  final String marketName;

  BrochureListItem({this.marketName});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
        height: 120,
        width: 320,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8),
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(4))),
            ),
            Container(
              width: 200,
              child: ListTile(
                title: Text(
                  marketName,
                  style: TextStyle(
                      color: Colors.indigo[900], fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Start: 30 Jan 2020',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'End: 30 Dec 2020',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '30 Days left',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
