// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-23T00:40:16.569798Z

part of vcore.model;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueClass
// **************************************************************************

class _$ValueClass extends ValueClass {
  final String name;
  final BuiltSet<Property> properties;
  _$ValueClass._({this.name, this.properties}) : super._() {
    if (name == null) throw new ArgumentError('null name');
    if (properties == null) throw new ArgumentError('null properties');
  }
  factory _$ValueClass([updates(ValueClassBuilder b)]) =>
      (new ValueClassBuilder()..update(updates)).build();
  ValueClass rebuild(updates(ValueClassBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$ValueClassBuilder toBuilder() => new _$ValueClassBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! ValueClass) return false;
    return name == other.name && properties == other.properties;
  }

  int get hashCode {
    return hashObjects([name, properties]);
  }

  String toString() {
    return 'ValueClass {'
        'name=${name.toString()}\n'
        'properties=${properties.toString()}\n'
        '}';
  }
}

class _$ValueClassBuilder extends ValueClassBuilder {
  _$ValueClassBuilder() : super._();
  void replace(ValueClass other) {
    super.name = other.name;
    super.properties = other.properties?.toBuilder();
  }

  void update(updates(ValueClassBuilder b)) {
    if (updates != null) updates(this);
  }

  ValueClass build() {
    if (name == null) throw new ArgumentError('null name');
    if (properties == null) throw new ArgumentError('null properties');
    return new _$ValueClass._(name: name, properties: properties?.build());
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Property
// **************************************************************************

class _$Property extends Property {
  final String name;
  _$Property._({this.name}) : super._() {
    if (name == null) throw new ArgumentError('null name');
  }
  factory _$Property([updates(PropertyBuilder b)]) =>
      (new PropertyBuilder()..update(updates)).build();
  Property rebuild(updates(PropertyBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$PropertyBuilder toBuilder() => new _$PropertyBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! Property) return false;
    return name == other.name;
  }

  int get hashCode {
    return hashObjects([name]);
  }

  String toString() {
    return 'Property {'
        'name=${name.toString()}\n'
        '}';
  }
}

class _$PropertyBuilder extends PropertyBuilder {
  _$PropertyBuilder() : super._();
  void replace(Property other) {
    super.name = other.name;
  }

  void update(updates(PropertyBuilder b)) {
    if (updates != null) updates(this);
  }

  Property build() {
    if (name == null) throw new ArgumentError('null name');
    return new _$Property._(name: name);
  }
}
