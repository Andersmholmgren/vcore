// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-23T00:30:39.283772Z

part of vcore.model;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueClass
// **************************************************************************

class _$ValueClass extends ValueClass {
  final String name;
  _$ValueClass._({this.name}) : super._() {
    if (name == null) throw new ArgumentError('null name');
  }
  factory _$ValueClass([updates(ValueClassBuilder b)]) =>
      (new ValueClassBuilder()..update(updates)).build();
  ValueClass rebuild(updates(ValueClassBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$ValueClassBuilder toBuilder() => new _$ValueClassBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! ValueClass) return false;
    return name == other.name;
  }

  int get hashCode {
    return hashObjects([name]);
  }

  String toString() {
    return 'ValueClass {'
        'name=${name.toString()}\n'
        '}';
  }
}

class _$ValueClassBuilder extends ValueClassBuilder {
  _$ValueClassBuilder() : super._();
  void replace(ValueClass other) {
    super.name = other.name;
  }

  void update(updates(ValueClassBuilder b)) {
    if (updates != null) updates(this);
  }

  ValueClass build() {
    if (name == null) throw new ArgumentError('null name');
    return new _$ValueClass._(name: name);
  }
}