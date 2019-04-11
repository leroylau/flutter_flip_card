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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
          ],
        ),
      ],
    );
  }
}
