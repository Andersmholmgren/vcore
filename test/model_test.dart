// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:vcore/vcore.dart';
import 'package:test/test.dart';
import 'package:built_collection/built_collection.dart';

void main() {
  group('A group of tests', () {
    test('', () {
      final ValueClass v = (new ValueClassBuilder()
            ..name = "Schema"
            ..properties = (new SetBuilder<Property>()
              ..add((new PropertyBuilder()..name = 'fred').build())))
          .build();
      var serialized = serializers.serialize(v);
      print(serialized);
    }, skip: false);
  });
}
