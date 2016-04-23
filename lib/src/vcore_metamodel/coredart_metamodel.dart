import 'package:vcore/src/model/model.dart';

Package get dartPackage => _dartPackage ??= _createPackage();

Package _dartPackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'dart';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(dartString);
  return packageBuilder.build();
}

ExternalClass _dartString;
ExternalClass get dartString => _dartString ??= _createDartString();

ExternalClass _createDartString() {
  final builder = new ExternalClassBuilder()
    ..name = 'String'
//    ..dartType = String
  ;

  return builder.build();
}
