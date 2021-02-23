import 'dart:async';

import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/util/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/functions.dart';
import 'package:flutter/foundation.dart';

class TestRepository {
  // Maybe this should not be in memory, but instead in local storage?? Maybe just Ids?
  Set<String> cachedByteIds = {'ds'};

  ByteRepository() {
    subject = StreamController.broadcast();
  }

  StreamController<PHByte> subject;

  StreamSubscription<PHByte> getBytes() {
    PHGlobal.userRef
        .where('Test', isEqualTo: "test")
        .limit(20)
        .snapshots()
        .listen((event) {});
  }
}
