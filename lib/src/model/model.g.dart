// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-23T22:13:53.635360Z

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
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(Classifier)),
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
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'type':
            result.type = serializers.deserialize(value,
                specifiedType: const FullType(Classifier));
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
      'superTypes',
      serializers.serialize(object.superTypes,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ValueClass)])),
      'isAbstract',
      serializers.serialize(object.isAbstract,
          specifiedType: const FullType(bool)),
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
          case 'superTypes':
            result.superTypes.replace(serializers.deserialize(value,
                specifiedType: const FullType(
                    BuiltSet, const [const FullType(ValueClass)])));
            break;
          case 'isAbstract':
            result.isAbstract = serializers.deserialize(value,
                specifiedType: const FullType(bool));
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
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'classifiers',
      serializers.serialize(object.classifiers,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Classifier)])),
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
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
            break;
          case 'classifiers':
            result.classifiers.replace(serializers.deserialize(value,
                specifiedType: const FullType(
                    BuiltSet, const [const FullType(Classifier)])));
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
  final String name;
  final Classifier base;
  final BuiltMap<TypeParameter, Classifier> genericTypeValues;
  _$GenericType._({this.name, this.base, this.genericTypeValues}) : super._() {
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
    return name == other.name &&
        base == other.base &&
        genericTypeValues == other.genericTypeValues;
  }

  int get hashCode {
    return hashObjects([name, base, genericTypeValues]);
  }

  String toString() {
    return 'GenericType {'
        'name=${name.toString()}\n'
        'base=${base.toString()}\n'
        'genericTypeValues=${genericTypeValues.toString()}\n'
        '}';
  }
}

class _$GenericTypeBuilder extends GenericTypeBuilder {
  _$GenericTypeBuilder() : super._();
  void replace(GenericType other) {
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
        name: name, base: base, genericTypeValues: genericTypeValues?.build());
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class TypeParameter
// **************************************************************************

class _$TypeParameter extends TypeParameter {
  final String name;
  final Classifier bound;
  _$TypeParameter._({this.name, this.bound}) : super._() {
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
    return name == other.name && bound == other.bound;
  }

  int get hashCode {
    return hashObjects([name, bound]);
  }

  String toString() {
    return 'TypeParameter {'
        'name=${name.toString()}\n'
        'bound=${bound.toString()}\n'
        '}';
  }
}

class _$TypeParameterBuilder extends TypeParameterBuilder {
  _$TypeParameterBuilder() : super._();
  void replace(TypeParameter other) {
    super.name = other.name;
    super.bound = other.bound;
  }

  void update(updates(TypeParameterBuilder b)) {
    if (updates != null) updates(this);
  }

  TypeParameter build() {
    if (name == null) throw new ArgumentError('null name');
    return new _$TypeParameter._(name: name, bound: bound);
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Property
// **************************************************************************

class _$Property extends Property {
  final String name;
  final Classifier type;
  _$Property._({this.name, this.type}) : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (type == null) throw new ArgumentError('null type');
  }
  factory _$Property([updates(PropertyBuilder b)]) =>
      (new PropertyBuilder()..update(updates)).build();
  Property rebuild(updates(PropertyBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$PropertyBuilder toBuilder() => new _$PropertyBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! Property) return false;
    return name == other.name && type == other.type;
  }

  int get hashCode {
    return hashObjects([name, type]);
  }

  String toString() {
    return 'Property {'
        'name=${name.toString()}\n'
        'type=${type.toString()}\n'
        '}';
  }
}

class _$PropertyBuilder extends PropertyBuilder {
  _$PropertyBuilder() : super._();
  void replace(Property other) {
    super.name = other.name;
    super.type = other.type;
  }

  void update(updates(PropertyBuilder b)) {
    if (updates != null) updates(this);
  }

  Property build() {
    if (name == null) throw new ArgumentError('null name');
    if (type == null) throw new ArgumentError('null type');
    return new _$Property._(name: name, type: type);
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueClass
// **************************************************************************

class _$ValueClass extends ValueClass {
  final String name;
  final BuiltSet<TypeParameter> genericTypes;
  final BuiltSet<Property> properties;
  final BuiltSet<ValueClass> superTypes;
  final bool isAbstract;
  _$ValueClass._(
      {this.name,
      this.genericTypes,
      this.properties,
      this.superTypes,
      this.isAbstract})
      : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (genericTypes == null) throw new ArgumentError('null genericTypes');
    if (properties == null) throw new ArgumentError('null properties');
    if (superTypes == null) throw new ArgumentError('null superTypes');
    if (isAbstract == null) throw new ArgumentError('null isAbstract');
  }
  factory _$ValueClass([updates(ValueClassBuilder b)]) =>
      (new ValueClassBuilder()..update(updates)).build();
  ValueClass rebuild(updates(ValueClassBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$ValueClassBuilder toBuilder() => new _$ValueClassBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! ValueClass) return false;
    return name == other.name &&
        genericTypes == other.genericTypes &&
        properties == other.properties &&
        superTypes == other.superTypes &&
        isAbstract == other.isAbstract;
  }

  int get hashCode {
    return hashObjects(
        [name, genericTypes, properties, superTypes, isAbstract]);
  }

  String toString() {
    return 'ValueClass {'
        'name=${name.toString()}\n'
        'genericTypes=${genericTypes.toString()}\n'
        'properties=${properties.toString()}\n'
        'superTypes=${superTypes.toString()}\n'
        'isAbstract=${isAbstract.toString()}\n'
        '}';
  }
}

class _$ValueClassBuilder extends ValueClassBuilder {
  _$ValueClassBuilder() : super._();
  void replace(ValueClass other) {
    super.name = other.name;
    super.genericTypes = other.genericTypes?.toBuilder();
    super.properties = other.properties?.toBuilder();
    super.superTypes = other.superTypes?.toBuilder();
    super.isAbstract = other.isAbstract;
  }

  void update(updates(ValueClassBuilder b)) {
    if (updates != null) updates(this);
  }

  ValueClass build() {
    if (name == null) throw new ArgumentError('null name');
    if (genericTypes == null) throw new ArgumentError('null genericTypes');
    if (properties == null) throw new ArgumentError('null properties');
    if (superTypes == null) throw new ArgumentError('null superTypes');
    if (isAbstract == null) throw new ArgumentError('null isAbstract');
    return new _$ValueClass._(
        name: name,
        genericTypes: genericTypes?.build(),
        properties: properties?.build(),
        superTypes: superTypes?.build(),
        isAbstract: isAbstract);
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ExternalClass
// **************************************************************************

class _$ExternalClass extends ExternalClass {
  final String name;
  final BuiltSet<TypeParameter> genericTypes;
  _$ExternalClass._({this.name, this.genericTypes}) : super._() {
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
    return name == other.name && genericTypes == other.genericTypes;
  }

  int get hashCode {
    return hashObjects([name, genericTypes]);
  }

  String toString() {
    return 'ExternalClass {'
        'name=${name.toString()}\n'
        'genericTypes=${genericTypes.toString()}\n'
        '}';
  }
}

class _$ExternalClassBuilder extends ExternalClassBuilder {
  _$ExternalClassBuilder() : super._();
  void replace(ExternalClass other) {
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
        name: name, genericTypes: genericTypes?.build());
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Package
// **************************************************************************

class _$Package extends Package {
  final String name;
  final BuiltSet<Classifier> classifiers;
  _$Package._({this.name, this.classifiers}) : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (classifiers == null) throw new ArgumentError('null classifiers');
  }
  factory _$Package([updates(PackageBuilder b)]) =>
      (new PackageBuilder()..update(updates)).build();
  Package rebuild(updates(PackageBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$PackageBuilder toBuilder() => new _$PackageBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! Package) return false;
    return name == other.name && classifiers == other.classifiers;
  }

  int get hashCode {
    return hashObjects([name, classifiers]);
  }

  String toString() {
    return 'Package {'
        'name=${name.toString()}\n'
        'classifiers=${classifiers.toString()}\n'
        '}';
  }
}

class _$PackageBuilder extends PackageBuilder {
  _$PackageBuilder() : super._();
  void replace(Package other) {
    super.name = other.name;
    super.classifiers = other.classifiers?.toBuilder();
  }

  void update(updates(PackageBuilder b)) {
    if (updates != null) updates(this);
  }

  Package build() {
    if (name == null) throw new ArgumentError('null name');
    if (classifiers == null) throw new ArgumentError('null classifiers');
    return new _$Package._(name: name, classifiers: classifiers?.build());
  }
}
