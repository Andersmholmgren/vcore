import 'package:vcore/src/model/model.dart';

import 'coredart_metamodel.dart';

Package get vcorePackage => _vcorePackage ??= _createPackage();

Package _vcorePackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'vcore';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(namedElement)..add(valueClass);
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

ValueClass _valueClass;
ValueClass get valueClass => _valueClass ??= _createValueClass();

ValueClass _createValueClass() {
  final builder = new ValueClassBuilder()..name = 'ValueClass';
  builder.superTypes.add(_classifier);
//  builder.properties.add()
}
