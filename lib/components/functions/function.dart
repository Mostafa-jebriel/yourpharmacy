
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void NavigatorToPage(context ,widget)=>Navigator.of(context).push(MaterialPageRoute(builder: (_) => widget));
void NavigatorAndFinish(context ,widget)=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => widget()),);