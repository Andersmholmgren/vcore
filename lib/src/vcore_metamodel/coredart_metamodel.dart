import 'package:vcore/src/model/model.dart';

Package get dartPackage => _dartPackage ??= _createPackage();

Package _dartPackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'dart';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(dartString)..add(dartBool);
  return packageBuilder.build();
}

ExternalClass _dartString;
ExternalClass get dartString => _dartString ??= _createDartString();
ExternalClass _createDartString() => _ec('String');

ExternalClass _dartBool;
ExternalClass get dartBool => _dartBool ??= _createDartBool();
ExternalClass _createDartBool() => _ec('bool');

ExternalClass _ec(String name) =>
    (new ExternalClassBuilder()..name = name).build();
