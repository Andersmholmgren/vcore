import 'package:vcore/src/model/model.dart';
import 'package:built_collection/built_collection.dart';

Package get builtPackage => _builtPackage ??= _createPackage();

Package _builtPackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'built';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(builtSet);
  return packageBuilder.build();
}

ExternalClass _builtSet;
ExternalClass get builtSet => _builtSet ??= _createBuiltSet();

ExternalClass _createBuiltSet() {
  final builder = new ExternalClassBuilder()
    ..name = 'BuiltSet'
//    ..dartType = BuiltSet
  ;

  builder.genericTypes.add((new TypeParameterBuilder()..name = 'E').build());

  return builder.build();
}
