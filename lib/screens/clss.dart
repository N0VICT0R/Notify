import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class StyledWidgetDemo extends StatelessWidget {
  Widget elevatedSurface(Widget child) => Styled.widget(child: child)
      .padding(all: 16)
      .decorated(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
  )
      .elevation(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: elevatedSurface(Text('Styled widget demo'))),
    );
  }
}