import 'package:vcore/src/model/model.dart';

Package get builtPackage => _builtPackage ??= _createPackage();

Package _builtPackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'built';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(builtSet)..add(builtList)..add(builtMap);
  return packageBuilder.build();
}

ExternalClass _builtSet;
ExternalClass get builtSet => _builtSet ??= _createBuiltSet();

ExternalClass _createBuiltSet() {
  return new ExternalClass((cb) => cb
    ..name = 'BuiltSet'
    ..genericTypes.add(new TypeParameter((b) => b..name = 'E')));
}

ExternalClass _builtList;
ExternalClass get builtList => _builtList ??= _createBuiltList();

ExternalClass _createBuiltList() {
  return new ExternalClass((cb) => cb
    ..name = 'BuiltList'
    ..genericTypes.add(new TypeParameter((b) => b..name = 'E')));
}

ExternalClass _builtMap;
ExternalClass get builtMap => _builtMap ??= _createBuiltMap();

ExternalClass _createBuiltMap() {
  return new ExternalClass((cb) => cb
    ..name = 'BuiltMap'
    ..genericTypes.add(new TypeParameter((b) => b..name = 'K'))
    ..genericTypes.add(new TypeParameter((b) => b..name = 'V')));
}
