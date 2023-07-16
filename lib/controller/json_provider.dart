import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gita/models/Post_models.dart';

class JSONProvider extends ChangeNotifier {
  List<PostModal> alladhyay = [];

  JSONProvider() {
    loadJSON();
  }

  loadJSON() async {
    String res = await rootBundle.loadString("assets/jason/GitaApi.json");
    List allData = jsonDecode(res);

    alladhyay = allData.map((e) => PostModal.formMap(data: e)).toList();
    notifyListeners();
  }
}
