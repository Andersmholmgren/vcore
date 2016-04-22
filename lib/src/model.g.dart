// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-22T23:14:17.062010Z

part of vcore.model;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ValueClass
// **************************************************************************

class _$ValueClass extends ValueClass {
  _$ValueClass._() : super._() {}
  factory _$ValueClass([updates(ValueClassBuilder b)]) =>
      (new ValueClassBuilder()..update(updates)).build();
  ValueClass rebuild(updates(ValueClassBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$ValueClassBuilder toBuilder() => new _$ValueClassBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! ValueClass) return false;
    return true;
  }

  int get hashCode {
    return 498947498;
  }

  String toString() {
    return 'ValueClass {}';
  }
}

class _$ValueClassBuilder extends ValueClassBuilder {
  _$ValueClassBuilder() : super._();
  void replace(ValueClass other) {}
  void update(updates(ValueClassBuilder b)) {
    if (updates != null) updates(this);
  }

  ValueClass build() {
    return new _$ValueClass._();
  }
}
