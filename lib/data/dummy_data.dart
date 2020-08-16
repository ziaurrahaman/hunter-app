import 'package:flutter/material.dart';
import 'package:huneter_card_app_home/model/brochures_list_model.dart';
import 'package:huneter_card_app_home/model/category_model.dart';
import 'package:huneter_card_app_home/model/deals_by_shop_model.dart';
import 'package:huneter_card_app_home/model/promo_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

var promo_dummy_data = [
  PromoModel(
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQNbEMH1IZ5RTQB9AbTFvh1lP_H4GEoe8teWQ&usqp=CAU',
      productBrandName: 'Brand',
      productName: 'Product Name',
      currentPrice: 70.30,
      previousPrice: 80.25),
  PromoModel(
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTgCKOTqQ27sguQYnjTxoULIuBl_xO7aOwqjw&usqp=CAU',
      productBrandName: 'Brand',
      productName: 'Product Name',
      currentPrice: 70.30,
      previousPrice: 80.25),
  PromoModel(
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5LpCJeduIsSI5Nwkb1FKmxsn91DhRFSh3Kw&usqp=CAU',
      productBrandName: 'Brand',
      productName: 'Product Name',
      currentPrice: 70.30,
      previousPrice: 80.25),
  PromoModel(
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQNbEMH1IZ5RTQB9AbTFvh1lP_H4GEoe8teWQ&usqp=CAU',
      productBrandName: 'Brand',
      productName: 'Product Name',
      currentPrice: 70.30,
      previousPrice: 80.25),
  PromoModel(
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQNbEMH1IZ5RTQB9AbTFvh1lP_H4GEoe8teWQ&usqp=CAU',
      productBrandName: 'Brand',
      productName: 'Product Name',
      currentPrice: 70.30,
      previousPrice: 80.25),
  PromoModel(
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQNbEMH1IZ5RTQB9AbTFvh1lP_H4GEoe8teWQ&usqp=CAU',
      productBrandName: 'Brand',
      productName: 'Product Name',
      currentPrice: 70.30,
      previousPrice: 80.25),
];

var category_dummy_data = [
  CategoryModel(
      iconPath: 'assets/images/canned_food.png', categoryName: 'Canned Food'),
  CategoryModel(
      iconPath: 'assets/images/beer.png', categoryName: 'Alcoholic Drinks'),
  CategoryModel(
      iconPath: 'assets/images/soda.png', categoryName: 'Soft Drinks'),
  CategoryModel(
      iconPath: 'assets/images/detergent.png', categoryName: 'Laundrie & Wash'),
  CategoryModel(
      iconPath: 'assets/images/canned_food.png', categoryName: 'Canned Food'),
  CategoryModel(
      iconPath: 'assets/images/canned_food.png', categoryName: 'Canned Food'),
  CategoryModel(
      iconPath: 'assets/images/beer.png', categoryName: 'Alcoholic Drinks'),
  CategoryModel(
      iconPath: 'assets/images/soda.png', categoryName: 'Soft Drinks'),
  CategoryModel(
      iconPath: 'assets/images/detergent.png', categoryName: 'Laundrie & Wash'),
];

var deals_by_shop_dummy_data = [
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaA,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'A'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaB,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'B'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaC,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'C'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaD,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'D'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaE,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'E'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaF,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'F'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaG,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'G'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaH,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'H'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaI,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'I'),
  DealsByShopModel(
      icon: Icon(
        MdiIcons.alphaJ,
        size: 72,
        color: Colors.white,
      ),
      shopName: 'J'),
];

var brochure_dummy_data = [
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
  BrochureModel(sMarketName: 'Supermarket Name'),
];
