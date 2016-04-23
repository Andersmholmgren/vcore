import 'package:vcore/src/model/model.dart';

Package get builtPackage => _builtPackage ??= _createPackage();

Package _builtPackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'built';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(builtBuiltSet);
  return packageBuilder.build();
}

ExternalClass _builtBuiltSet;
ExternalClass get builtBuiltSet => _builtBuiltSet ??= _createBuiltBuiltSet();

ExternalClass _createBuiltBuiltSet() {
  final builder = new ExternalClassBuilder()..name = 'BuiltSet'
//    ..genericTypes
  ;

  return builder.build();
}
