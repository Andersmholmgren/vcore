library vcore.model;

import 'package:built_collection/built_collection.dart';
import 'package:built_json/built_json.dart';
import 'package:built_value/built_value.dart';
import 'package:quiver/iterables.dart';

part 'model.g.dart';

abstract class ModelElement {
  @nullable
  String get docComment;
}

abstract class NamedElement implements ModelElement {
  String get name;
}

abstract class Classifier<V extends Classifier<V, B>,
    B extends ClassifierBuilder<V, B>> implements NamedElement {
  B toBuilder();
}

abstract class ClassifierBuilder<V extends Classifier<V, B>,
    B extends ClassifierBuilder<V, B>> {
  String name;
  V build();
}

abstract class GenericClassifier<V extends GenericClassifier<V, B>,
    B extends ClassifierBuilder<V, B>> implements Classifier<V, B> {
  BuiltSet<TypeParameter> get genericTypes;
}

abstract class GenericType
    implements
        Built<GenericType, GenericTypeBuilder>,
        Classifier<GenericType, GenericTypeBuilder> {
  static final Serializer<GenericType> serializer = _$genericTypeSerializer;

  @nullable
  String get docComment;
  String get name;
  Classifier get base;
  BuiltMap<TypeParameter, Classifier> get genericTypeValues;

  GenericType._();

  factory GenericType([updates(GenericTypeBuilder b)]) = _$GenericType;
}

abstract class GenericTypeBuilder
    implements
        Builder<GenericType, GenericTypeBuilder>,
        ClassifierBuilder<GenericType, GenericTypeBuilder> {
  @nullable
  String docComment;
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

  @nullable
  String get docComment;
  String get name;
  @nullable
  Classifier get bound;

  TypeParameter._();

  factory TypeParameter([updates(TypeParameterBuilder b)]) = _$TypeParameter;
}

abstract class TypeParameterBuilder
    implements Builder<TypeParameter, TypeParameterBuilder> {
  @nullable
  String docComment;
  String name;
  @nullable
  Classifier bound;

  TypeParameterBuilder._();

  factory TypeParameterBuilder() = _$TypeParameterBuilder;
}

abstract class Property
    implements Built<Property, PropertyBuilder>, NamedElement {
  static final Serializer<Property> serializer = _$propertySerializer;

  @nullable
  String get docComment;
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
  @nullable
  String docComment;
  String name;
  ClassifierBuilder type;
  bool isNullable = false;
  @nullable
  Object defaultValue;
  @nullable
  String derivedExpression;

  PropertyBuilder._();

  factory PropertyBuilder() = _$PropertyBuilder;
}

/// ouch. This is needed as currently have an issue when creating meta model
/// where ValueClass has a field of type ValueClass but that instance doesn't
/// exist yet
abstract class ValuableClass<V extends ValuableClass<V, B>,
    B extends ClassifierBuilder<V, B>> implements GenericClassifier<V, B> {
  BuiltSet<Property> get properties;
  BuiltSet<Property> get allProperties;
  bool get isAbstract;
}

abstract class ValueClass
    implements
        Built<ValueClass, ValueClassBuilder>,
        ValuableClass<ValueClass, ValueClassBuilder> {
  static final Serializer<ValueClass> serializer = _$valueClassSerializer;

  @nullable
  String get docComment;
  String get name;
  BuiltSet<TypeParameter> get genericTypes;
  BuiltSet<Property> get properties;
  BuiltSet<Property> get allProperties => new BuiltSet<Property>(
      concat([superTypes.expand((vc) => vc.allProperties), properties]));
  bool get isAbstract;
  BuiltSet<ValueClass> get superTypes;

  ValueClass._();

  factory ValueClass([updates(ValueClassBuilder b)]) = _$ValueClass;
}

abstract class ValueClassBuilder
    implements
        Builder<ValueClass, ValueClassBuilder>,
        ClassifierBuilder<ValueClass, ValueClassBuilder> {
  @nullable
  String docComment;
  String name;
  SetBuilder<TypeParameter> genericTypes = new SetBuilder<TypeParameter>();
  SetBuilder<Property> properties = new SetBuilder<Property>();
  bool isAbstract = false;
  SetBuilder<ValueClass> superTypes = new SetBuilder<ValueClass>();

  ValueClassBuilder._();

  factory ValueClassBuilder() = _$ValueClassBuilder;
}

abstract class EnumClass
    implements
        Built<EnumClass, EnumClassBuilder>,
        Classifier<EnumClass, EnumClassBuilder> {
  static final Serializer<EnumClass> serializer = _$enumClassSerializer;

  @nullable
  String get docComment;
  String get name;
  BuiltSet<String> get literals;

  EnumClass._();

  factory EnumClass([updates(EnumClassBuilder b)]) = _$EnumClass;
}

abstract class EnumClassBuilder
    implements
        Builder<EnumClass, EnumClassBuilder>,
        ClassifierBuilder<EnumClass, EnumClassBuilder> {
  @nullable
  String docComment;
  String name;
  SetBuilder<String> literals = new SetBuilder<String>();

  EnumClassBuilder._();

  factory EnumClassBuilder() = _$EnumClassBuilder;
}

abstract class ExternalClass
    implements
        Built<ExternalClass, ExternalClassBuilder>,
        GenericClassifier<ExternalClass, ExternalClassBuilder> {
  static final Serializer<ExternalClass> serializer = _$externalClassSerializer;

  @nullable
  String get docComment;
  String get name;
  BuiltSet<TypeParameter> get genericTypes;

  ExternalClass._();

  factory ExternalClass([updates(ExternalClassBuilder b)]) = _$ExternalClass;
}

abstract class ExternalClassBuilder
    implements
        Builder<ExternalClass, ExternalClassBuilder>,
        ClassifierBuilder<ExternalClass, ExternalClassBuilder> {
  @nullable
  String docComment;
  String name;
  SetBuilder<TypeParameter> genericTypes = new SetBuilder<TypeParameter>();

  ExternalClassBuilder._();

  factory ExternalClassBuilder() = _$ExternalClassBuilder;
}

abstract class Package implements Built<Package, PackageBuilder>, NamedElement {
  static final Serializer<Package> serializer = _$packageSerializer;

  @nullable
  String get docComment;
  String get name;
  BuiltSet<Classifier> get classifiers;

  Package._();

  factory Package([updates(PackageBuilder b)]) = _$Package;
}

abstract class PackageBuilder implements Builder<Package, PackageBuilder> {
  @nullable
  String docComment;
  String name;
  SetBuilder<Classifier> classifiers = new SetBuilder<Classifier>();

  PackageBuilder._();

  factory PackageBuilder() = _$PackageBuilder;
}
