import 'package:flutter/material.dart';
import 'package:huneter_card_app_home/model/deals_by_shop_model.dart';

class DealsByShopItem extends StatelessWidget {
  final Icon icon;
  final String shopName;
  final int index;

  DealsByShopItem({this.icon, this.shopName, this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4, right: 4),
      height: 40,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: index.isEven ? Colors.indigo[900] : Colors.amber),
      child: Column(
        children: <Widget>[
          icon,
          Text(
            'Shop',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            shopName,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
