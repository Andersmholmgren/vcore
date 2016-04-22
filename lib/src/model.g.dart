// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-22T23:48:33.658498Z

part of vcore.model;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class NamedElement
// **************************************************************************

class _$NamedElement extends NamedElement {
  final String name;
  _$NamedElement._({this.name}) : super._() {
    if (name == null) throw new ArgumentError('null name');
  }
  factory _$NamedElement([updates(NamedElementBuilder b)]) =>
      (new NamedElementBuilder()..update(updates)).build();
  NamedElement rebuild(updates(NamedElementBuilder b)) =>
      (toBuilder()..update(updates)).build();
  _$NamedElementBuilder toBuilder() =>
      new _$NamedElementBuilder()..replace(this);
  bool operator ==(other) {
    if (other is! NamedElement) return false;
    return name == other.name;
  }

  int get hashCode {
    return hashObjects([name]);
  }

  String toString() {
    return 'NamedElement {'
        'name=${name.toString()}\n'
        '}';
  }
}

class _$NamedElementBuilder extends NamedElementBuilder {
  _$NamedElementBuilder() : super._();
  void replace(NamedElement other) {
    super.name = other.name;
  }

  void update(updates(NamedElementBuilder b)) {
    if (updates != null) updates(this);
  }

  NamedElement build() {
    if (name == null) throw new ArgumentError('null name');
    return new _$NamedElement._(name: name);
  }
}

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
