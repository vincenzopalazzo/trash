import 'package:flutter/material.dart';


/// Expandable Cars is a Widget that give the possibility to
/// implement a expandable cart where the user can click over 
/// to expand the content of the expandable widget
/// 
/// author: https://github.com/vincenzopalazzo
class ExpandableCard extends StatelessWidget {
  final Border? shape;
  final double elevation;
  final EdgeInsets margin;
  final Widget child;
  final Widget expandableChild;

  const ExpandableCard(
      {Key? key,
      this.shape,
      this.elevation = 2,
      this.margin = const EdgeInsets.all(12.0),
      required this.child,
      required this.expandableChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: shape ??
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
      elevation: elevation,
      margin: margin,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpansionTile(
          title: child,
          trailing: const SizedBox(),
          children: <Widget>[expandableChild],
        ),
      ),
    );
  }
}
