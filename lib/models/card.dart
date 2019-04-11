class Card {
  final String backdropAssetPath;
  final address;
  final int minHeightInFeet;
  final int maxHeightInFeet;
  final double tempInDegrees;
  final String weatherType;
  final double windSpeedInMph;
  final String cardinalDirection;

  Card(
      {this.backdropAssetPath,
      this.address,
      this.minHeightInFeet,
      this.maxHeightInFeet,
      this.tempInDegrees,
      this.weatherType,
      this.windSpeedInMph,
      this.cardinalDirection});
}
