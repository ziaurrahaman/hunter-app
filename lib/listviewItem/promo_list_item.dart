import 'package:flutter/material.dart';

class PromoListItem extends StatelessWidget {
  final String imagePath;
  final String brand;
  final String prName;
  final double prCurrentPrice;
  final double prPreviousPrice;

  PromoListItem(
      {this.imagePath,
      this.brand,
      this.prName,
      this.prCurrentPrice,
      this.prPreviousPrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Container(
            height: 220,
            width: 160,
            child: Column(
              children: <Widget>[
                Image.network(
                  imagePath,
                  height: 130,
                  width: 80,
                  fit: BoxFit.fill,
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          brand,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          prName,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Rs $prCurrentPrice ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '\/$prPreviousPrice',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
