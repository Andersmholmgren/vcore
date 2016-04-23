import 'package:vcore/src/model/model.dart';

import 'coredart_metamodel.dart';
import 'built_metamodel.dart';

Package get vcorePackage => _vcorePackage ??= _createPackage();

Package _vcorePackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'vcore';
  packageBuilder.classifiers
    ..add(namedElement)
    ..add(classifier)
    ..add(property)
    ..add(valueClass);
  return packageBuilder.build();
}

ValueClass _namedElement;
ValueClass get namedElement => _namedElement ??= _createNamedElement();

ValueClass _createNamedElement() {
  final builder = new ValueClassBuilder()..name = 'NamedElement';
  builder.properties
    ..add((new PropertyBuilder()
          ..name = 'name'
          ..type = dartString)
        .build());

  return builder.build();
}

ValueClass _classifier;
ValueClass get classifier => _classifier ??= _createClassifier();

ValueClass _createClassifier() {
  final builder = new ValueClassBuilder()..name = 'Classifier';
  builder.superTypes.add(namedElement);

  return builder.build();
}

ValueClass _property;
ValueClass get property => _property ??= _createProperty();

ValueClass _createProperty() {
  final builder = new ValueClassBuilder()..name = 'Property';
  builder.superTypes.add(namedElement);

  builder.properties
    ..add((new PropertyBuilder()
          ..name = 'name'
          ..type = dartString)
        .build())
    ..add((new PropertyBuilder()
          ..name = 'type'
          ..type = classifier)
        .build());

  return builder.build();
}

ValueClass _valueClass;
ValueClass get valueClass => _valueClass ??= _createValueClass();

ValueClass _createValueClass() {
  final builder = new ValueClassBuilder()..name = 'ValueClass';
  builder.superTypes.add(_classifier);
  builder.properties.add((new PropertyBuilder()
        ..name = 'properties'
        ..type = builtSet)
      .build());
}
