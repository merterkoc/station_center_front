import 'dart:convert';

import 'dart:ui' as ui;
import 'package:flutter/services.dart';

readJsonFile(String filePath) async {
  final String response =
      await rootBundle.loadString('lib/src/home/service/MOCK_DATA.json');

  return jsonDecode(response);
}

Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
      .buffer
      .asUint8List();
}

///launchMapsUrl
Future<void> launchMapsUrl(num lat, num lng) async {
  final String googleMapsUrl =
      'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
  final String appleMapsUrl = 'https://maps.apple.com/?q=$lat,$lng';

  //if (await canLaunch(googleMapsUrl)) {
  //await launch(googleMapsUrl);
  //} else if (await canLaunch(appleMapsUrl)) {
  // await launch(appleMapsUrl);
  //} else {
  //  throw 'Could not launch maps.';
  // }
}
