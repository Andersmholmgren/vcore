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

abstract class Classifier implements NamedElement {
  BuiltSet<TypeParameter> get genericTypes;
}

abstract class TypeParameter
    implements NamedElement, Built<TypeParameter, TypeParameterBuilder> {
  static final Serializer<TypeParameter> serializer = _$typeParameterSerializer;
  String get name;
  Classifier get bound;

  TypeParameter._();

  factory TypeParameter([updates(TypeParameterBuilder b)]) = _$TypeParameter;
}

abstract class TypeParameterBuilder /*extends NamedElementBuilder*/
    implements
        Builder<TypeParameter, TypeParameterBuilder> {
  String name;
  Classifier bound;

  TypeParameterBuilder._();
  factory TypeParameterBuilder() = _$TypeParameterBuilder;
}

//abstract class ClassifierBuilder implements NamedElementBuilder {}

abstract class ValueClass extends Classifier
    implements Built<ValueClass, ValueClassBuilder> {
  static final Serializer<ValueClass> serializer = _$valueClassSerializer;
  String get name;
  BuiltSet<TypeParameter> get genericTypes;
  BuiltSet<Property> get properties;
  BuiltSet<ValueClass> get superTypes;

  ValueClass._();

  factory ValueClass([updates(ValueClassBuilder b)]) = _$ValueClass;
}

abstract class ValueClassBuilder /*extends NamedElementBuilder*/
    implements
        Builder<ValueClass, ValueClassBuilder> {
  String name;
  SetBuilder<TypeParameter> genericTypes = new SetBuilder<TypeParameter>();
  SetBuilder<Property> properties = new SetBuilder<Property>();
//  SetBuilder<PropertyBuilder> properties = new SetBuilder<PropertyBuilder>();
  SetBuilder<ValueClass> superTypes = new SetBuilder<ValueClass>();

  ValueClassBuilder._();
  factory ValueClassBuilder() = _$ValueClassBuilder;
}

abstract class ExternalClass extends Classifier
    implements Built<ExternalClass, ExternalClassBuilder> {
  static final Serializer<ExternalClass> serializer = _$externalClassSerializer;
  String get name;
  Type get dartType;
  BuiltSet<TypeParameter> get genericTypes;

  ExternalClass._();

  factory ExternalClass([updates(ExternalClassBuilder b)]) = _$ExternalClass;
}

abstract class ExternalClassBuilder /*extends NamedElementBuilder*/
    implements
        Builder<ExternalClass, ExternalClassBuilder> {
  String name;
  Type dartType;

  SetBuilder<TypeParameter> genericTypes = new SetBuilder<TypeParameter>();

  ExternalClassBuilder._();
  factory ExternalClassBuilder() = _$ExternalClassBuilder;
}

abstract class Property extends NamedElement
    implements Built<Property, PropertyBuilder> {
  static final Serializer<Property> serializer = _$propertySerializer;
  String get name;
  Classifier get type;
  Property._();

  factory Property([updates(PropertyBuilder b)]) = _$Property;
}

abstract class PropertyBuilder /*extends NamedElementBuilder*/
    implements
        Builder<Property, PropertyBuilder> {
  String name;
  Classifier type;
  PropertyBuilder._();
  factory PropertyBuilder() = _$PropertyBuilder;
}

abstract class Package implements NamedElement, Built<Package, PackageBuilder> {
  static final Serializer<Package> serializer = _$packageSerializer;
  String get name;
  BuiltSet<Classifier> get classifiers;

  Package._();

  factory Package([updates(PackageBuilder b)]) = _$Package;
}

abstract class PackageBuilder implements Builder<Package, PackageBuilder> {
  String name;
  SetBuilder<Classifier> classifiers = new SetBuilder<Classifier>();

  PackageBuilder._();
  factory PackageBuilder() = _$PackageBuilder;
}
