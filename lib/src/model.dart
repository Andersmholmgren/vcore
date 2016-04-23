library vcore.model;

//import 'package:built_collection/built_collection.dart';
//import 'package:built_json/built_json.dart';
import 'package:built_value/built_value.dart';

part 'model.g.dart';

// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

abstract class NamedElement {
  String get name;
}

abstract class NamedElementBuilder {
  String name;
}

abstract class Classifier implements NamedElement {}

abstract class ClassifierBuilder implements NamedElementBuilder {}

abstract class ValueClass extends Classifier
    implements Built<ValueClass, ValueClassBuilder> {
  String get name;
  ValueClass._();

  factory ValueClass([updates(ValueClassBuilder b)]) = _$ValueClass;
}

abstract class ValueClassBuilder /*extends NamedElementBuilder*/
    implements Builder<ValueClass, ValueClassBuilder> {
  String name;
  ValueClassBuilder._();
  factory ValueClassBuilder() = _$ValueClassBuilder;
}

//abstract class Property extends NamedElement {}
