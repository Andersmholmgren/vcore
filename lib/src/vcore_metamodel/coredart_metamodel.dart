import 'package:vcore/src/model/model.dart';

Package get dartPackage => _dartPackage ??= _createPackage();

Package _dartPackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'dart';
  final classifiers = packageBuilder.classifiers;
  classifiers
    ..add(dartObject)
    ..add(dartString)
    ..add(dartBool)
    ..add(dartNum)
    ..add(dartInt)
    ..add(dartNull)
    ..add(dartUri);
  return packageBuilder.build();
}

ExternalClass _dartObject;
ExternalClass get dartObject => _dartObject ??= _ec('Object');

ExternalClass _dartString;
ExternalClass get dartString => _dartString ??= _ec('String');

ExternalClass _dartBool;
ExternalClass get dartBool => _dartBool ??= _ec('bool');

ExternalClass _dartNum;
ExternalClass get dartNum => _dartNum ??= _ec('num');

ExternalClass _dartInt;
ExternalClass get dartInt => _dartInt ??= _ec('int');

ExternalClass _dartNull;
ExternalClass get dartNull => _dartNull ??= _ec('null');

ExternalClass _dartUri;
ExternalClass get dartUri => _dartUri ??= _ec('Uri');

ExternalClass _ec(String name) => new ExternalClass((b) => b..name = name);
