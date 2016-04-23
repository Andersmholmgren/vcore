// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-23T03:09:49.115953Z

part of vcore.model;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library vcore.model
// **************************************************************************

Serializer<Package> _$packageSerializer = new _$PackageSerializer();
Serializer<ValueClass> _$valueClassSerializer = new _$ValueClassSerializer();
Serializer<Property> _$propertySerializer = new _$PropertySerializer();

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

class _$ValueClassSerializer implements StructuredSerializer<ValueClass> {
  final Iterable<Type> types = new BuiltList<Type>([ValueClass, _$ValueClass]);
  final String wireName = 'ValueClass';

  @override
  Iterable serialize(Serializers serializers, ValueClass object,
      {FullType specifiedType: FullType.unspecified}) {
    return [
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'properties',
      serializers.serialize(object.properties,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Property)])),
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
          case 'name':
            result.name = serializers.deserialize(value,
                specifiedType: const FullType(String));
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

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueClass
// **************************************************************************

class _$ValueClass extends ValueClass {
  final String name;
  final BuiltSet<Property> properties;
  final BuiltSet<ValueClass> superTypes;
  _$ValueClass._({this.name, this.properties, this.superTypes}) : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (properties == null) throw new ArgumentError('null properties');
    if (superTypes == null) throw new ArgumentError('null superTypes');
  }
  factory _$ValueClass([updates(ValueClassBuilder b)]) =>
      (new ValueClassBuilder()..update(updates)).build();
  ValueClass rebuild(updates(ValueClassBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$ValueClassBuilder toBuilder() => new _$ValueClassBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! ValueClass) return false;
    return name == other.name &&
        properties == other.properties &&
        superTypes == other.superTypes;
  }

  int get hashCode {
    return hashObjects([name, properties, superTypes]);
  }

  String toString() {
    return 'ValueClass {'
        'name=${name.toString()}\n'
        'properties=${properties.toString()}\n'
        'superTypes=${superTypes.toString()}\n'
        '}';
  }
}

class _$ValueClassBuilder extends ValueClassBuilder {
  _$ValueClassBuilder() : super._();
  void replace(ValueClass other) {
    super.name = other.name;
    super.properties = other.properties?.toBuilder();
    super.superTypes = other.superTypes?.toBuilder();
  }

  void update(updates(ValueClassBuilder b)) {
    if (updates != null) updates(this);
  }

  ValueClass build() {
    if (name == null) throw new ArgumentError('null name');
    if (properties == null) throw new ArgumentError('null properties');
    if (superTypes == null) throw new ArgumentError('null superTypes');
    return new _$ValueClass._(
        name: name,
        properties: properties?.build(),
        superTypes: superTypes?.build());
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
