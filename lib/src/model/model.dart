library vcore.model;

import 'package:built_collection/built_collection.dart';
import 'package:built_json/built_json.dart';
import 'package:built_value/built_value.dart';
import 'package:quiver/iterables.dart';

part 'model.g.dart';

abstract class ModelElement {}

abstract class NamedElement implements ModelElement {
  String get name;
}

abstract class Classifier implements NamedElement {}

abstract class GenericClassifier implements Classifier {
  BuiltSet<TypeParameter> get genericTypes;
}

abstract class GenericType
    implements Built<GenericType, GenericTypeBuilder>, Classifier {
  static final Serializer<GenericType> serializer = _$genericTypeSerializer;
  String get name;
  Classifier get base;
  BuiltMap<TypeParameter, Classifier> get genericTypeValues;

  GenericType._();

  factory GenericType([updates(GenericTypeBuilder b)]) = _$GenericType;
}

abstract class GenericTypeBuilder
    implements Builder<GenericType, GenericTypeBuilder> {
  String name;
  Classifier base;
  MapBuilder<TypeParameter, Classifier> genericTypeValues =
      new MapBuilder<TypeParameter, Classifier>();

  GenericTypeBuilder._();
  factory GenericTypeBuilder() = _$GenericTypeBuilder;
}

abstract class TypeParameter
    implements Built<TypeParameter, TypeParameterBuilder>, NamedElement {
  static final Serializer<TypeParameter> serializer = _$typeParameterSerializer;
  String get name;
  @nullable
  Classifier get bound;

  TypeParameter._();

  factory TypeParameter([updates(TypeParameterBuilder b)]) = _$TypeParameter;
}

abstract class TypeParameterBuilder
    implements Builder<TypeParameter, TypeParameterBuilder> {
  String name;
  @nullable
  Classifier bound;

  TypeParameterBuilder._();
  factory TypeParameterBuilder() = _$TypeParameterBuilder;
}

abstract class Property
    implements Built<Property, PropertyBuilder>, NamedElement {
  static final Serializer<Property> serializer = _$propertySerializer;
  String get name;
  Classifier get type;
  bool get isNullable;
  @nullable
  Object get defaultValue;

  @nullable
  String get derivedExpression;

  bool get isDerived => derivedExpression != null;

  Property._();

  factory Property([updates(PropertyBuilder b)]) = _$Property;
}

abstract class PropertyBuilder implements Builder<Property, PropertyBuilder> {
  String name;
  Classifier type;
  bool isNullable = false;
  @nullable
  Object defaultValue;
  @nullable
  String derivedExpression;

  PropertyBuilder._();
  factory PropertyBuilder() = _$PropertyBuilder;
}

abstract class ValueClass
    implements Built<ValueClass, ValueClassBuilder>, GenericClassifier {
  static final Serializer<ValueClass> serializer = _$valueClassSerializer;
  String get name;
  BuiltSet<TypeParameter> get genericTypes;
  BuiltSet<Property> get properties;
  BuiltSet<Property> get allProperties => new BuiltSet<Property>(
      concat([superTypes.expand((vc) => vc.allProperties), properties]));

  BuiltSet<ValueClass> get superTypes;
  bool get isAbstract;

  ValueClass._();

  factory ValueClass([updates(ValueClassBuilder b)]) = _$ValueClass;
}

abstract class ValueClassBuilder
    implements Builder<ValueClass, ValueClassBuilder> {
  String name;
  SetBuilder<TypeParameter> genericTypes = new SetBuilder<TypeParameter>();
  SetBuilder<Property> properties = new SetBuilder<Property>();
  SetBuilder<ValueClass> superTypes = new SetBuilder<ValueClass>();
  bool isAbstract = false;

  ValueClassBuilder._();
  factory ValueClassBuilder() = _$ValueClassBuilder;
}

abstract class ExternalClass
    implements Built<ExternalClass, ExternalClassBuilder>, GenericClassifier {
  static final Serializer<ExternalClass> serializer = _$externalClassSerializer;
  String get name;
  BuiltSet<TypeParameter> get genericTypes;

  ExternalClass._();

  factory ExternalClass([updates(ExternalClassBuilder b)]) = _$ExternalClass;

  factory ExternalClass.build(
      {String name, SetBuilder<TypeParameter> genericTypes}) {
    return (new ExternalClassBuilder()
          ..name = name
          ..genericTypes = genericTypes)
        .build();
  }
}

abstract class ExternalClassBuilder
    implements Builder<ExternalClass, ExternalClassBuilder> {
  String name;

  SetBuilder<TypeParameter> genericTypes = new SetBuilder<TypeParameter>();

  ExternalClassBuilder._();
  factory ExternalClassBuilder() = _$ExternalClassBuilder;
}

abstract class Package implements Built<Package, PackageBuilder>, NamedElement {
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
