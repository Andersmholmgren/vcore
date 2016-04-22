library vcore.model;

import 'package:built_collection/built_collection.dart';
import 'package:built_json/built_json.dart';
import 'package:built_value/built_value.dart';

part 'model.g.dart';

// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

abstract class NamedElement
    implements Built<NamedElement, NamedElementBuilder> {
  String get name;
  NamedElement._();

  factory NamedElement([updates(NamedElementBuilder b)]) = _$NamedElement;
}

abstract class NamedElementBuilder
    implements Builder<NamedElement, NamedElementBuilder> {
  String name;
  NamedElementBuilder._();
  factory NamedElementBuilder() = _$NamedElementBuilder;
}

abstract class Classifier //extends NamedElement
    implements Built<Classifier, ClassifierBuilder> {
  Classifier._();

  factory Classifier([updates(ClassifierBuilder b)]) = _$Classifier;

}

abstract class ClassifierBuilder
  implements Builder<Classifier, ClassifierBuilder> {
  ClassifierBuilder._();
  factory ClassifierBuilder() = _$ClassifierBuilder;
}


abstract class ValueClass extends Classifier
    implements Built<ValueClass, ValueClassBuilder> {
  ValueClass._();

  factory ValueClass([updates(ValueClassBuilder b)]) = _$ValueClass;
}

abstract class ValueClassBuilder
    implements Builder<ValueClass, ValueClassBuilder> {
  ValueClassBuilder._();
  factory ValueClassBuilder() = _$ValueClassBuilder;
}

//abstract class Property extends NamedElement {}
