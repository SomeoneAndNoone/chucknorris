import 'dart:convert';

import 'package:chucknorris/common/constants/general_constants.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'model/chucknorris_response.dart';

class AssetJsonData {
  Future<List<ChucknorrisResponse>> getChucknorrisList() async {
    String jsonStr = await rootBundle.loadString(GeneralConstants.SOURCE_LOC);

    dynamic jsonData = jsonDecode(jsonStr);

    List<ChucknorrisResponse> response = [];
    jsonData.forEach((dynamic element) {
      response.add(ChucknorrisResponse.fromJson(element as Map<String, dynamic>));
    });

    return response;
  }
}
