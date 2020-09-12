import 'package:flutter/material.dart';

double getDeviceWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

double getDeviceHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double getStatusBarHeight(BuildContext context) =>
    MediaQuery.of(context).padding.top;
