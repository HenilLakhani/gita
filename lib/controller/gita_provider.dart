import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gita/models/adhyay_models.dart';

class GitaProvider extends ChangeNotifier {
  List<AdhayayModal> allShloka = [];

  GitaProvider() {
    loadJSON();
  }

  loadJSON() async {
    String src = await rootBundle.loadString("assets/jason/SHLOKA.json");
    List allShlok = jsonDecode(src);

    allShloka = allShlok.map((e) => AdhayayModal.formMap(chr: e)).toList();
    notifyListeners();
  }
}
