import 'package:vcore/src/model/model.dart';
import 'package:built_collection/built_collection.dart';

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
  return new ExternalClass.build(
      name: 'BuiltSet',
      genericTypes: new SetBuilder<TypeParameter>()
        ..add(new TypeParameter.build(name: 'E')));
}

ExternalClass _builtMap;
ExternalClass get builtMap => _builtMap ??= _createBuiltMap();

ExternalClass _createBuiltMap() {
  final builder = new ExternalClassBuilder()..name = 'BuiltMap';

  builder.genericTypes
    ..add((new TypeParameterBuilder()..name = 'K').build())
    ..add((new TypeParameterBuilder()..name = 'V').build());

  return builder.build();
}

//builtMap
