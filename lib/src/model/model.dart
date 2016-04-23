library vcore.model;

import 'package:built_collection/built_collection.dart';
import 'package:built_json/built_json.dart';
import 'package:built_value/built_value.dart';

part 'model.g.dart';

abstract class NamedElement {
  String get name;
}

//abstract class NamedElementBuilder {
//  String name;
//}

abstract class Classifier implements NamedElement {}

abstract class Package implements NamedElement, Built<Package, PackageBuilder> {
  static final Serializer<Package> serializer = _$packageSerializer;
  String get name;
  BuiltSet<Property> get properties;

  Package._();

  factory Package([updates(PackageBuilder b)]) = _$Package;
}

abstract class PackageBuilder /*extends NamedElementBuilder*/
    implements
        Builder<Package, PackageBuilder> {
  String name;
  SetBuilder<Property> properties = new SetBuilder<Property>();
//  SetBuilder<PropertyBuilder> properties = new SetBuilder<PropertyBuilder>();

  PackageBuilder._();
  factory PackageBuilder() = _$PackageBuilder;
}

//abstract class ClassifierBuilder implements NamedElementBuilder {}

abstract class ValueClass extends Classifier
    implements Built<ValueClass, ValueClassBuilder> {
  static final Serializer<ValueClass> serializer = _$valueClassSerializer;
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
//  SetBuilder<PropertyBuilder> properties = new SetBuilder<PropertyBuilder>();

  ValueClassBuilder._();
  factory ValueClassBuilder() = _$ValueClassBuilder;
}

abstract class Property extends NamedElement
    implements Built<Property, PropertyBuilder> {
  static final Serializer<Property> serializer = _$propertySerializer;
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
