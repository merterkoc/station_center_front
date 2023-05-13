import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:station_center/src/home/bloc/home_bloc.dart';

mixin MarkerMixin {
  BitmapDescriptor getIcon(String? iconName, List<BitmapDescriptor>? iconList) {
    switch (iconName) {
      case 'ZES':
        return iconList![5];
      case 'OnCharge (TR)':
        return iconList![2];
      case 'Voltrun':
        return iconList![4];
      case 'Eşarj (TR)':
        return iconList![1];
      case 'Sharz.Net':
        return iconList![3];
      default:
        return iconList![0];
    }
  }
}
