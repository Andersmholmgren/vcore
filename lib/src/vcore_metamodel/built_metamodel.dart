import 'package:vcore/src/model/model.dart';

Package get builtPackage => _builtPackage ??= _createPackage();

Package _builtPackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'built';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(builtSet)..add(builtMap);
  return packageBuilder.build();
}

ExternalClass _builtSet;
ExternalClass get builtSet => _builtSet ??= _createBuiltSet();

ExternalClass _createBuiltSet() {
  return new ExternalClass((sb) => sb
    ..name = 'BuiltSet'
    ..genericTypes.add(new TypeParameter((b) => b..name = 'E')));
}

ExternalClass _builtMap;
ExternalClass get builtMap => _builtMap ??= _createBuiltMap();

ExternalClass _createBuiltMap() {
  return new ExternalClass((sb) => sb
    ..name = 'BuiltMap'
    ..genericTypes.add(new TypeParameter((b) => b..name = 'K'))
    ..genericTypes.add(new TypeParameter((b) => b..name = 'V')));
}
