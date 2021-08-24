import 'package:timelines/timelines.dart';
import 'package:flutter/material.dart';
import 'package:widjiwidji/assets/colors/colors.dart';
import 'package:flip_card/flip_card.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:widjiwidji/views/components/on_hover.dart';

class JourneyLine extends StatefulWidget {
  const JourneyLine({
    Key? key,
    required this.screenWidth,
    required this.mainGradient,
  }) : super(key: key);

  final double screenWidth;
  final Gradient mainGradient;

  @override
  _JourneyLineState createState() => _JourneyLineState();
}

class _JourneyLineState extends State<JourneyLine> {
  // late List<PaletteColor> colors;
  // late Color grad;

  // late int _currentIndex;

  // void initState() {
  //   super.initState();
  //   colors = [];
  //   _currentIndex = 0;
  //   _updatePalettes();
  // }

  // _updatePalettes() async {
  //   final PaletteGenerator generator =
  //       await PaletteGenerator.fromImageProvider(imageProvider);
  // }

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      theme: TimelineThemeData(
        direction: Axis.horizontal,
        connectorTheme: ConnectorThemeData(
          space: 50.0,
          thickness: 5.0,
        ),
      ),
      builder: TimelineTileBuilder.connected(
          itemCount: _nodes.length,
          connectionDirection: ConnectionDirection.after,
          itemExtentBuilder: (_, __) => widget.screenWidth / 4.5,
          oppositeContentsBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                top: 30.0,
                bottom: 15.0,
                right: 50.0,
                left: 50.0,
              ),
              child: OnHover(builder: (isHovered) {
                return PhysicalModel(
                  shape: BoxShape.rectangle,
                  color: Colors.transparent,
                  elevation: isHovered ? 16 : 0,
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: JourneyCard(
                      widget: Image.asset(
                        'assets/images/timeline/${index + 1}.png',
                      ),
                    ),
                    back: JourneyCard(
                      widget: Text(
                        'card description',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // width: 100,
                    // height: 100,
                  ),
                );
              }),
            );
          },
          contentsBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                top: 15.0,
                // right: 50.0,
                // left: 50.0,
              ),
              child: Text(
                _nodes[index],
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            );
          },
          indicatorBuilder: (_, index) {
            return OutlinedDotIndicator(
              size: 20.0,
              color: topGradientColor,
              backgroundColor: bottomGradientColor,
            );
          },
          connectorBuilder: (_, index, type) {
            return DecoratedLineConnector(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                //gradient: widget.mainGradient,
              ),
            );
          }),
    );
  }
}

class JourneyCard extends StatelessWidget {
  const JourneyCard({
    Key? key,
    required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // topGradientColor,
            // bottomGradientColor,
            Colors.white.withOpacity(0.2),
            Colors.white.withOpacity(0.05),
          ],
        ),
        color: Colors.blue[800],
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: widget,
        ),
      ),
    );
  }
}

final _nodes = [
  'Walt Disney Elementary School',
  'Iron Horse Middle School',
  'California High School',
  'Kumon',
  'ColdStone Creamery',
  'UC Merced',
  'MESA Labs',
  'UC Riverside',
  'Pizza the Hut',
  'Kids that Code',
];
