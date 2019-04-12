import 'package:flip_card/models/card.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final CardModel card;
  final double parallaxPercent;

  const CardView({Key key, this.card, this.parallaxPercent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // backgroud using the image
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            child: FractionalTranslation(
              translation: Offset(parallaxPercent * 2.0, 0.0),
              child: OverflowBox(
                maxWidth: double.infinity,
                child: Image.asset(
                  card.backdropAssetPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),

        // Text content
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 20.0),
            child: Text(
              '${card.address}'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'petita',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '${card.minHeightInFeet} - ${card.maxHeightInFeet}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 140.0,
                    fontFamily: 'petita',
                    letterSpacing: -5.0),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 30.0),
                child: Text(
                  'FT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontFamily: 'petita',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  '${card.tempInDegrees.toStringAsFixed(1)}º',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'petita',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.white, width: 1.5),
                color: Colors.black.withOpacity(0.3),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '${card.weatherType}',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'petita',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Icon(
                        Icons.wb_cloudy,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${card.windSpeedInMph}mph ${card.cardinalDirection}',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'petita',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
