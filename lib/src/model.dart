library vcore.model;

import 'package:built_collection/built_collection.dart';
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
  BuiltSet<Property> get properties;

  ValueClass._();

  factory ValueClass([updates(ValueClassBuilder b)]) = _$ValueClass;
}

abstract class ValueClassBuilder /*extends NamedElementBuilder*/
    implements
        Builder<ValueClass, ValueClassBuilder> {
  String name;
  SetBuilder<Property> properties = new SetBuilder<Property>();

  ValueClassBuilder._();
  factory ValueClassBuilder() = _$ValueClassBuilder;
}

abstract class Property extends NamedElement
    implements Built<Property, PropertyBuilder> {
  String get name;
  Property._();

  factory Property([updates(PropertyBuilder b)]) = _$Property;
}

abstract class PropertyBuilder /*extends NamedElementBuilder*/
    implements
        Builder<Property, PropertyBuilder> {
  String name;
  PropertyBuilder._();
  factory PropertyBuilder() = _$PropertyBuilder;
}
