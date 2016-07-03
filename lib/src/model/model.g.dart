// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-07-03T03:44:04.661320Z

part of vcore.model;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library vcore.model
// **************************************************************************

Serializer<GenericType> _$genericTypeSerializer = new _$GenericTypeSerializer();
Serializer<TypeParameter> _$typeParameterSerializer =
    new _$TypeParameterSerializer();
Serializer<Property> _$propertySerializer = new _$PropertySerializer();
Serializer<ValueClass> _$valueClassSerializer = new _$ValueClassSerializer();
Serializer<EnumClass> _$enumClassSerializer = new _$EnumClassSerializer();
Serializer<ExternalClass> _$externalClassSerializer =
    new _$ExternalClassSerializer();
Serializer<Package> _$packageSerializer = new _$PackageSerializer();

class _$GenericTypeSerializer implements StructuredSerializer<GenericType> {
  final Iterable<Type> types =
      new BuiltList<Type>([GenericType, _$GenericType]);
  final String wireName = 'GenericType';

  @override
  Iterable serialize(Serializers serializers, GenericType object,
      {FullType specifiedType: FullType.unspecified}) {
    return [
      'docComment',
      serializers.serialize(object.docComment,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'base',
      serializers.serialize(object.base,
          specifiedType: const FullType(Classifier)),
      'genericTypeValues',
      serializers.serialize(object.genericTypeValues,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(TypeParameter),
            const FullType(Classifier)
          ])),
    ];
  }

  @override
  GenericType deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericTypeBuilder();

    var key;
    var value;
    var expectingKey = true;
    for (final item in serialized) {
      if (expectingKey) {
        key = item;
        expectingKey = false;
      } else {
        value = item;
        expectingKey = true;

        switch (key as String) {
          case 'docComment':
            result.docComment = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'base':
            result.base = serializers.deserialize(value,
                specifiedType: const FullType(Classifier));
            break;
          case 'genericTypeValues':
            result.genericTypeValues.replace(serializers.deserialize(value,
                specifiedType: const FullType(BuiltMap, const [
                  const FullType(TypeParameter),
                  const FullType(Classifier)
                ])));
            break;
        }
      }
    }

    return result.build();
  }
}

class _$TypeParameterSerializer implements StructuredSerializer<TypeParameter> {
  final Iterable<Type> types =
      new BuiltList<Type>([TypeParameter, _$TypeParameter]);
  final String wireName = 'TypeParameter';

  @override
  Iterable serialize(Serializers serializers, TypeParameter object,
      {FullType specifiedType: FullType.unspecified}) {
    return [
      'docComment',
      serializers.serialize(object.docComment,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'bound',
      serializers.serialize(object.bound,
          specifiedType: const FullType(Classifier)),
    ];
  }

  @override
  TypeParameter deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TypeParameterBuilder();

    var key;
    var value;
    var expectingKey = true;
    for (final item in serialized) {
      if (expectingKey) {
        key = item;
        expectingKey = false;
      } else {
        value = item;
        expectingKey = true;

        switch (key as String) {
          case 'docComment':
            result.docComment = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'bound':
            result.bound = serializers.deserialize(value,
                specifiedType: const FullType(Classifier));
            break;
        }
      }
    }

    return result.build();
  }
}

class _$PropertySerializer implements StructuredSerializer<Property> {
  final Iterable<Type> types = new BuiltList<Type>([Property, _$Property]);
  final String wireName = 'Property';

  @override
  Iterable serialize(Serializers serializers, Property object,
      {FullType specifiedType: FullType.unspecified}) {
    return [
      'docComment',
      serializers.serialize(object.docComment,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(Classifier)),
      'explicitBuilderType',
      serializers.serialize(object.explicitBuilderType,
          specifiedType: const FullType(Classifier)),
      'isNullable',
      serializers.serialize(object.isNullable,
          specifiedType: const FullType(bool)),
      'defaultValue',
      serializers.serialize(object.defaultValue,
          specifiedType: FullType.unspecified),
      'derivedExpression',
      serializers.serialize(object.derivedExpression,
          specifiedType: const FullType(String)),
    ];
  }

  @override
  Property deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PropertyBuilder();

    var key;
    var value;
    var expectingKey = true;
    for (final item in serialized) {
      if (expectingKey) {
        key = item;
        expectingKey = false;
      } else {
        value = item;
        expectingKey = true;

        switch (key as String) {
          case 'docComment':
            result.docComment = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'type':
            result.type.replace(serializers.deserialize(value,
                specifiedType: const FullType(Classifier)));
            break;
          case 'explicitBuilderType':
            result.explicitBuilderType.replace(serializers.deserialize(value,
                specifiedType: const FullType(Classifier)));
            break;
          case 'isNullable':
            result.isNullable = serializers.deserialize(value,
                specifiedType: const FullType(bool));
            break;
          case 'defaultValue':
            result.defaultValue = serializers.deserialize(value,
                specifiedType: FullType.unspecified);
            break;
          case 'derivedExpression':
            result.derivedExpression = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
        }
      }
    }

    return result.build();
  }
}

class _$ValueClassSerializer implements StructuredSerializer<ValueClass> {
  final Iterable<Type> types = new BuiltList<Type>([ValueClass, _$ValueClass]);
  final String wireName = 'ValueClass';

  @override
  Iterable serialize(Serializers serializers, ValueClass object,
      {FullType specifiedType: FullType.unspecified}) {
    return [
      'docComment',
      serializers.serialize(object.docComment,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'genericTypes',
      serializers.serialize(object.genericTypes,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(TypeParameter)])),
      'properties',
      serializers.serialize(object.properties,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Property)])),
      'isAbstract',
      serializers.serialize(object.isAbstract,
          specifiedType: const FullType(bool)),
      'superTypes',
      serializers.serialize(object.superTypes,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ValueClass)])),
    ];
  }

  @override
  ValueClass deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ValueClassBuilder();

    var key;
    var value;
    var expectingKey = true;
    for (final item in serialized) {
      if (expectingKey) {
        key = item;
        expectingKey = false;
      } else {
        value = item;
        expectingKey = true;

        switch (key as String) {
          case 'docComment':
            result.docComment = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'genericTypes':
            result.genericTypes.replace(serializers.deserialize(value,
                specifiedType: const FullType(
                    BuiltSet, const [const FullType(TypeParameter)])));
            break;
          case 'properties':
            result.properties.replace(serializers.deserialize(value,
                specifiedType: const FullType(
                    BuiltSet, const [const FullType(Property)])));
            break;
          case 'isAbstract':
            result.isAbstract = serializers.deserialize(value,
                specifiedType: const FullType(bool));
            break;
          case 'superTypes':
            result.superTypes.replace(serializers.deserialize(value,
                specifiedType: const FullType(
                    BuiltSet, const [const FullType(ValueClass)])));
            break;
        }
      }
    }

    return result.build();
  }
}

class _$EnumClassSerializer implements StructuredSerializer<EnumClass> {
  final Iterable<Type> types = new BuiltList<Type>([EnumClass, _$EnumClass]);
  final String wireName = 'EnumClass';

  @override
  Iterable serialize(Serializers serializers, EnumClass object,
      {FullType specifiedType: FullType.unspecified}) {
    return [
      'docComment',
      serializers.serialize(object.docComment,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'literals',
      serializers.serialize(object.literals,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
    ];
  }

  @override
  EnumClass deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new EnumClassBuilder();

    var key;
    var value;
    var expectingKey = true;
    for (final item in serialized) {
      if (expectingKey) {
        key = item;
        expectingKey = false;
      } else {
        value = item;
        expectingKey = true;

        switch (key as String) {
          case 'docComment':
            result.docComment = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'literals':
            result.literals.replace(serializers.deserialize(value,
                specifiedType:
                    const FullType(BuiltSet, const [const FullType(String)])));
            break;
        }
      }
    }

    return result.build();
  }
}

class _$ExternalClassSerializer implements StructuredSerializer<ExternalClass> {
  final Iterable<Type> types =
      new BuiltList<Type>([ExternalClass, _$ExternalClass]);
  final String wireName = 'ExternalClass';

  @override
  Iterable serialize(Serializers serializers, ExternalClass object,
      {FullType specifiedType: FullType.unspecified}) {
    return [
      'docComment',
      serializers.serialize(object.docComment,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'genericTypes',
      serializers.serialize(object.genericTypes,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(TypeParameter)])),
    ];
  }

  @override
  ExternalClass deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ExternalClassBuilder();

    var key;
    var value;
    var expectingKey = true;
    for (final item in serialized) {
      if (expectingKey) {
        key = item;
        expectingKey = false;
      } else {
        value = item;
        expectingKey = true;

        switch (key as String) {
          case 'docComment':
            result.docComment = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'genericTypes':
            result.genericTypes.replace(serializers.deserialize(value,
                specifiedType: const FullType(
                    BuiltSet, const [const FullType(TypeParameter)])));
            break;
        }
      }
    }

    return result.build();
  }
}

class _$PackageSerializer implements StructuredSerializer<Package> {
  final Iterable<Type> types = new BuiltList<Type>([Package, _$Package]);
  final String wireName = 'Package';

  @override
  Iterable serialize(Serializers serializers, Package object,
      {FullType specifiedType: FullType.unspecified}) {
    return [
      'docComment',
      serializers.serialize(object.docComment,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'classifiers',
      serializers.serialize(object.classifiers,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Classifier)])),
      'imports',
      serializers.serialize(object.imports,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
      'subPackages',
      serializers.serialize(object.subPackages,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Package)])),
    ];
  }

  @override
  Package deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PackageBuilder();

    var key;
    var value;
    var expectingKey = true;
    for (final item in serialized) {
      if (expectingKey) {
        key = item;
        expectingKey = false;
      } else {
        value = item;
        expectingKey = true;

        switch (key as String) {
          case 'docComment':
            result.docComment = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'classifiers':
            result.classifiers.replace(serializers.deserialize(value,
                specifiedType: const FullType(
                    BuiltSet, const [const FullType(Classifier)])));
            break;
          case 'imports':
            result.imports.replace(serializers.deserialize(value,
                specifiedType:
                    const FullType(BuiltSet, const [const FullType(String)])));
            break;
          case 'subPackages':
            result.subPackages.replace(serializers.deserialize(value,
                specifiedType:
                    const FullType(BuiltSet, const [const FullType(Package)])));
            break;
        }
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class GenericType
// **************************************************************************

class _$GenericType extends GenericType {
  final String docComment;
  final String name;
  final Classifier base;
  final BuiltMap<TypeParameter, Classifier> genericTypeValues;
  _$GenericType._(
      {this.docComment, this.name, this.base, this.genericTypeValues})
      : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (base == null) throw new ArgumentError('null base');
    if (genericTypeValues == null)
      throw new ArgumentError('null genericTypeValues');
  }
  factory _$GenericType([updates(GenericTypeBuilder b)]) =>
      (new GenericTypeBuilder()..update(updates)).build();
  GenericType rebuild(updates(GenericTypeBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$GenericTypeBuilder toBuilder() => new _$GenericTypeBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! GenericType) return false;
    return docComment == other.docComment &&
        name == other.name &&
        base == other.base &&
        genericTypeValues == other.genericTypeValues;
  }

  int get hashCode {
    return hashObjects([docComment, name, base, genericTypeValues]);
  }

  String toString() {
    return 'GenericType {'
        'docComment=${docComment.toString()}\n'
        'name=${name.toString()}\n'
        'base=${base.toString()}\n'
        'genericTypeValues=${genericTypeValues.toString()}\n'
        '}';
  }
}

class _$GenericTypeBuilder extends GenericTypeBuilder {
  _$GenericTypeBuilder() : super._();
  void replace(GenericType other) {
    super.docComment = other.docComment;
    super.name = other.name;
    super.base = other.base;
    super.genericTypeValues = other.genericTypeValues?.toBuilder();
  }

  void update(updates(GenericTypeBuilder b)) {
    if (updates != null) updates(this);
  }

  GenericType build() {
    if (name == null) throw new ArgumentError('null name');
    if (base == null) throw new ArgumentError('null base');
    if (genericTypeValues == null)
      throw new ArgumentError('null genericTypeValues');
    return new _$GenericType._(
        docComment: docComment,
        name: name,
        base: base,
        genericTypeValues: genericTypeValues?.build());
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class TypeParameter
// **************************************************************************

class _$TypeParameter extends TypeParameter {
  final String docComment;
  final String name;
  final Classifier bound;
  _$TypeParameter._({this.docComment, this.name, this.bound}) : super._() {
    if (name == null) throw new ArgumentError('null name');
  }
  factory _$TypeParameter([updates(TypeParameterBuilder b)]) =>
      (new TypeParameterBuilder()..update(updates)).build();
  TypeParameter rebuild(updates(TypeParameterBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$TypeParameterBuilder toBuilder() =>
      new _$TypeParameterBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! TypeParameter) return false;
    return docComment == other.docComment &&
        name == other.name &&
        bound == other.bound;
  }

  int get hashCode {
    return hashObjects([docComment, name, bound]);
  }

  String toString() {
    return 'TypeParameter {'
        'docComment=${docComment.toString()}\n'
        'name=${name.toString()}\n'
        'bound=${bound.toString()}\n'
        '}';
  }
}

class _$TypeParameterBuilder extends TypeParameterBuilder {
  _$TypeParameterBuilder() : super._();
  void replace(TypeParameter other) {
    super.docComment = other.docComment;
    super.name = other.name;
    super.bound = other.bound;
  }

  void update(updates(TypeParameterBuilder b)) {
    if (updates != null) updates(this);
  }

  TypeParameter build() {
    if (name == null) throw new ArgumentError('null name');
    return new _$TypeParameter._(
        docComment: docComment, name: name, bound: bound);
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Property
// **************************************************************************

class _$Property extends Property {
  final String docComment;
  final String name;
  final Classifier type;
  final Classifier explicitBuilderType;
  final bool isNullable;
  final Object defaultValue;
  final String derivedExpression;
  _$Property._(
      {this.docComment,
      this.name,
      this.type,
      this.explicitBuilderType,
      this.isNullable,
      this.defaultValue,
      this.derivedExpression})
      : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (type == null) throw new ArgumentError('null type');
    if (isNullable == null) throw new ArgumentError('null isNullable');
  }
  factory _$Property([updates(PropertyBuilder b)]) =>
      (new PropertyBuilder()..update(updates)).build();
  Property rebuild(updates(PropertyBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$PropertyBuilder toBuilder() => new _$PropertyBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! Property) return false;
    return docComment == other.docComment &&
        name == other.name &&
        type == other.type &&
        explicitBuilderType == other.explicitBuilderType &&
        isNullable == other.isNullable &&
        defaultValue == other.defaultValue &&
        derivedExpression == other.derivedExpression;
  }

  int get hashCode {
    return hashObjects([
      docComment,
      name,
      type,
      explicitBuilderType,
      isNullable,
      defaultValue,
      derivedExpression
    ]);
  }

  String toString() {
    return 'Property {'
        'docComment=${docComment.toString()}\n'
        'name=${name.toString()}\n'
        'type=${type.toString()}\n'
        'explicitBuilderType=${explicitBuilderType.toString()}\n'
        'isNullable=${isNullable.toString()}\n'
        'defaultValue=${defaultValue.toString()}\n'
        'derivedExpression=${derivedExpression.toString()}\n'
        '}';
  }
}

class _$PropertyBuilder extends PropertyBuilder {
  _$PropertyBuilder() : super._();
  void replace(Property other) {
    super.docComment = other.docComment;
    super.name = other.name;
    super.type = other.type?.toBuilder();
    super.explicitBuilderType = other.explicitBuilderType?.toBuilder();
    super.isNullable = other.isNullable;
    super.defaultValue = other.defaultValue;
    super.derivedExpression = other.derivedExpression;
  }

  void update(updates(PropertyBuilder b)) {
    if (updates != null) updates(this);
  }

  Property build() {
    if (name == null) throw new ArgumentError('null name');
    if (type == null) throw new ArgumentError('null type');
    if (isNullable == null) throw new ArgumentError('null isNullable');
    return new _$Property._(
        docComment: docComment,
        name: name,
        type: type?.build(),
        explicitBuilderType: explicitBuilderType?.build(),
        isNullable: isNullable,
        defaultValue: defaultValue,
        derivedExpression: derivedExpression);
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueClass
// **************************************************************************

// Error: Please make changes to use built_value.
// TODO: Make field _allProperties a getter Make field _allSuperTypes a getter Make builder have exactly these fields: _allProperties, _allSuperTypes, docComment, name, genericTypes, properties, isAbstract, superTypes

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class EnumClass
// **************************************************************************

class _$EnumClass extends EnumClass {
  final String docComment;
  final String name;
  final BuiltSet<String> literals;
  _$EnumClass._({this.docComment, this.name, this.literals}) : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (literals == null) throw new ArgumentError('null literals');
  }
  factory _$EnumClass([updates(EnumClassBuilder b)]) =>
      (new EnumClassBuilder()..update(updates)).build();
  EnumClass rebuild(updates(EnumClassBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$EnumClassBuilder toBuilder() => new _$EnumClassBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! EnumClass) return false;
    return docComment == other.docComment &&
        name == other.name &&
        literals == other.literals;
  }

  int get hashCode {
    return hashObjects([docComment, name, literals]);
  }

  String toString() {
    return 'EnumClass {'
        'docComment=${docComment.toString()}\n'
        'name=${name.toString()}\n'
        'literals=${literals.toString()}\n'
        '}';
  }
}

class _$EnumClassBuilder extends EnumClassBuilder {
  _$EnumClassBuilder() : super._();
  void replace(EnumClass other) {
    super.docComment = other.docComment;
    super.name = other.name;
    super.literals = other.literals?.toBuilder();
  }

  void update(updates(EnumClassBuilder b)) {
    if (updates != null) updates(this);
  }

  EnumClass build() {
    if (name == null) throw new ArgumentError('null name');
    if (literals == null) throw new ArgumentError('null literals');
    return new _$EnumClass._(
        docComment: docComment, name: name, literals: literals?.build());
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ExternalClass
// **************************************************************************

class _$ExternalClass extends ExternalClass {
  final String docComment;
  final String name;
  final BuiltSet<TypeParameter> genericTypes;
  _$ExternalClass._({this.docComment, this.name, this.genericTypes})
      : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (genericTypes == null) throw new ArgumentError('null genericTypes');
  }
  factory _$ExternalClass([updates(ExternalClassBuilder b)]) =>
      (new ExternalClassBuilder()..update(updates)).build();
  ExternalClass rebuild(updates(ExternalClassBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$ExternalClassBuilder toBuilder() =>
      new _$ExternalClassBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! ExternalClass) return false;
    return docComment == other.docComment &&
        name == other.name &&
        genericTypes == other.genericTypes;
  }

  int get hashCode {
    return hashObjects([docComment, name, genericTypes]);
  }

  String toString() {
    return 'ExternalClass {'
        'docComment=${docComment.toString()}\n'
        'name=${name.toString()}\n'
        'genericTypes=${genericTypes.toString()}\n'
        '}';
  }
}

class _$ExternalClassBuilder extends ExternalClassBuilder {
  _$ExternalClassBuilder() : super._();
  void replace(ExternalClass other) {
    super.docComment = other.docComment;
    super.name = other.name;
    super.genericTypes = other.genericTypes?.toBuilder();
  }

  void update(updates(ExternalClassBuilder b)) {
    if (updates != null) updates(this);
  }

  ExternalClass build() {
    if (name == null) throw new ArgumentError('null name');
    if (genericTypes == null) throw new ArgumentError('null genericTypes');
    return new _$ExternalClass._(
        docComment: docComment,
        name: name,
        genericTypes: genericTypes?.build());
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Package
// **************************************************************************

class _$Package extends Package {
  final String docComment;
  final String name;
  final BuiltSet<Classifier> classifiers;
  final BuiltSet<String> imports;
  final BuiltSet<Package> subPackages;
  _$Package._(
      {this.docComment,
      this.name,
      this.classifiers,
      this.imports,
      this.subPackages})
      : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (classifiers == null) throw new ArgumentError('null classifiers');
    if (imports == null) throw new ArgumentError('null imports');
    if (subPackages == null) throw new ArgumentError('null subPackages');
  }
  factory _$Package([updates(PackageBuilder b)]) =>
      (new PackageBuilder()..update(updates)).build();
  Package rebuild(updates(PackageBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$PackageBuilder toBuilder() => new _$PackageBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! Package) return false;
    return docComment == other.docComment &&
        name == other.name &&
        classifiers == other.classifiers &&
        imports == other.imports &&
        subPackages == other.subPackages;
  }

  int get hashCode {
    return hashObjects([docComment, name, classifiers, imports, subPackages]);
  }

  String toString() {
    return 'Package {'
        'docComment=${docComment.toString()}\n'
        'name=${name.toString()}\n'
        'classifiers=${classifiers.toString()}\n'
        'imports=${imports.toString()}\n'
        'subPackages=${subPackages.toString()}\n'
        '}';
  }
}

class _$PackageBuilder extends PackageBuilder {
  _$PackageBuilder() : super._();
  void replace(Package other) {
    super.docComment = other.docComment;
    super.name = other.name;
    super.classifiers = other.classifiers?.toBuilder();
    super.imports = other.imports?.toBuilder();
    super.subPackages = other.subPackages?.toBuilder();
  }

  void update(updates(PackageBuilder b)) {
    if (updates != null) updates(this);
  }

  Package build() {
    if (name == null) throw new ArgumentError('null name');
    if (classifiers == null) throw new ArgumentError('null classifiers');
    if (imports == null) throw new ArgumentError('null imports');
    if (subPackages == null) throw new ArgumentError('null subPackages');
    return new _$Package._(
        docComment: docComment,
        name: name,
        classifiers: classifiers?.build(),
        imports: imports?.build(),
        subPackages: subPackages?.build());
  }
}
