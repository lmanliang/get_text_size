import 'package:flutter/material.dart';
import 'dart:ui' as ui;
class GetTextSize {
  String textContent ='';
  TextStyle textStyle = TextStyle();
  var painter = TextPainter();
  setText(String content, TextStyle textStyle){
    textContent = content;
    this.textStyle = textStyle;
    painter = new TextPainter(
        text: TextSpan(
          text: textContent,
          style: textStyle,
        ),textDirection: ui.TextDirection.ltr
        )..layout(maxWidth: 2048);
  }
  getHeight(){
    return painter.size.height;
  }
  getWidth(){
    return painter.size.width;
  }
}
