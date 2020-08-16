class PromoModel {
  final String imagePath;
  final String productBrandName;
  final String productName;
  final double currentPrice;
  final double previousPrice;

  PromoModel(
      {this.imagePath,
      this.productBrandName,
      this.productName,
      this.currentPrice,
      this.previousPrice});
}
