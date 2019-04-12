# flip_card

A Flutter Flip-card Demo.

# Two Main Widgets

Setup the project and put some assets into the `assets` folder.


## CardFlipper Widget

This widget is responsible to present the card in a `flip` way.

* Create a `CardView` Widget using the text and image

(1) Use `ClipRRect` and `OverflowBox` Widgets to create the background.

(2) Info of weather is in a `Column`. Use `Text` widget to config the font (size, Family, weight, color). A lot of widgets (Icon, Padding, Row, Column, Expanded).

(3) Use `Stack` to stack background and text together.

## BottomBar Widget

This widget is a progress bar which is synchronous to the `CardFlipper`