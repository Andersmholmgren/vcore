import 'package:vcore/src/model/model.dart';
import 'package:vcore/src/type_name.dart';

Package get builtPackage => _builtPackage ??= _createPackage();

Package _builtPackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'built';
  final classifiers = packageBuilder.classifiers;
  final builtClasses = [builtSet, builtList, builtMap];
  final builderClasses = builtClasses.map((c) => _createBuilder(c));
  classifiers..addAll(builtClasses)..addAll(builderClasses);
  return packageBuilder.build();
}

ExternalClass _builtSet;
ExternalClass get builtSet => _builtSet ??= _createBuiltSet();

ExternalClass _createBuiltSet() {
  return new ExternalClass((cb) => cb
    ..name = 'BuiltSet'
    ..genericTypes.add(new TypeParameterBuilder()..name = 'E'));
}

ExternalClass _builtList;
ExternalClass get builtList => _builtList ??= _createBuiltList();

ExternalClass _createBuiltList() {
  return new ExternalClass((cb) => cb
    ..name = 'BuiltList'
    ..genericTypes.add(new TypeParameterBuilder()..name = 'E'));
}

ExternalClass _builtMap;
ExternalClass get builtMap => _builtMap ??= _createBuiltMap();

ExternalClass _createBuiltMap() {
  return new ExternalClass((cb) => cb
    ..name = 'BuiltMap'
    ..genericTypes.add(new TypeParameterBuilder()..name = 'K')
    ..genericTypes.add(new TypeParameterBuilder()..name = 'V'));
}

const BuiltBuilderNamingPattern _namingPattern =
    BuiltBuilderNamingPattern.collections;

ExternalClass _createBuilder(ExternalClass builtClass) {
  return new ExternalClass((cb) => cb
    ..name = _namingPattern.builderNameFor(builtClass.name)
    ..genericTypes.addAll(builtClass.genericTypes.map((t) => t.toBuilder())));
}
