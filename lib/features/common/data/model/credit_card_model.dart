class CreditCard {
  final String cardType;
  final String number;
  final String imageAsset; // Add a field for the custom image asset path

  CreditCard({
    required this.cardType,
    required this.number,
    required this.imageAsset,
  });
}
