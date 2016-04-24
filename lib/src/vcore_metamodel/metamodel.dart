import 'package:vcore/src/model/model.dart';

import 'coredart_metamodel.dart';
import 'built_metamodel.dart';

Package get vcorePackage => _vcorePackage ??= _createVCorePackage();

Package _vcorePackage;

Package _createVCorePackage() {
  final packageBuilder = new PackageBuilder()..name = 'vcore';
  packageBuilder.classifiers
    ..add(modelElement)
    ..add(namedElement)
    ..add(classifier)
    ..add(genericClassifier)
    ..add(genericType)
    ..add(typeParameter)
    ..add(property)
    ..add(valueClass)
    ..add(externalClass)
    ..add(package);
  return packageBuilder.build();
}

ValueClass _modelElement;
ValueClass get modelElement => _modelElement ??= _createModelElement();

ValueClass _createModelElement() {
  final builder = new ValueClassBuilder()
    ..name = 'ModelElement'
    ..isAbstract = true;

  return builder.build();
}

ValueClass _namedElement;
ValueClass get namedElement => _namedElement ??= _createNamedElement();

ValueClass _createNamedElement() {
  final builder = new ValueClassBuilder()
    ..name = 'NamedElement'
    ..isAbstract = true;
  builder.superTypes.add(modelElement);
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
  final builder = new ValueClassBuilder()
    ..name = 'Classifier'
    ..isAbstract = true;
  builder.superTypes.add(namedElement);

  return builder.build();
}

ValueClass _typeParameter;
ValueClass get typeParameter => _typeParameter ??= _createTypeParameter();

ValueClass _createTypeParameter() {
  final builder = new ValueClassBuilder()..name = 'TypeParameter';
  builder.superTypes.add(namedElement);
  builder.properties
    ..add((new PropertyBuilder()
          ..name = 'bound'
          ..type = classifier
          ..isNullable = true)
        .build());

  return builder.build();
}

ValueClass _genericClassifier;
ValueClass get genericClassifier =>
    _genericClassifier ??= _createGenericClassifier();

ValueClass _createGenericClassifier() {
  final builder = new ValueClassBuilder()
    ..name = 'GenericClassifier'
    ..isAbstract = true;
  builder.superTypes.add(namedElement);
  builder.properties
    ..add((new PropertyBuilder()
          ..name = 'genericTypes'
          ..type = _createBuiltSet(typeParameter))
        .build());

  return builder.build();
}

ValueClass _genericType;
ValueClass get genericType => _genericType ??= _createGenericType();

ValueClass _createGenericType() {
  final builder = new ValueClassBuilder()..name = 'GenericType';
  builder.superTypes.add(classifier);

  builder.properties
    ..add((new PropertyBuilder()
          ..name = 'base'
          ..type = classifier)
        .build())
    ..add((new PropertyBuilder()
          ..name = 'genericTypeValues'
          ..type = _createBuiltMap(typeParameter, classifier))
        .build());

  return builder.build();
}

ValueClass _property;
ValueClass get property => _property ??= _createProperty();

ValueClass _createProperty() {
  final builder = new ValueClassBuilder()..name = 'Property';
  builder.superTypes.add(namedElement);

  builder.properties
    ..add((new PropertyBuilder()
          ..name = 'type'
          ..type = classifier)
        .build())
    ..add((new PropertyBuilder()
          ..name = 'isNullable'
          ..type = dartBool)
        .build());

  return builder.build();
}

ValueClass _valueClass;
ValueClass get valueClass => _valueClass ??= _createValueClass();

ValueClass _createValueClass() {
  final builder = new ValueClassBuilder()..name = 'ValueClass';
  builder.superTypes.add(genericClassifier);
  builder.properties.add((new PropertyBuilder()
        ..name = 'properties'
        ..type = _createBuiltSet(property))
      .build());

  return builder.build();
}

ValueClass _externalClass;
ValueClass get externalClass => _externalClass ??= _createExternalClass();

ValueClass _createExternalClass() {
  final builder = new ValueClassBuilder()..name = 'ExternalClass';
  builder.superTypes.add(genericClassifier);

  return builder.build();
}

ValueClass _package;
ValueClass get package => _package ??= _createPackage();

ValueClass _createPackage() {
  final builder = new ValueClassBuilder()..name = 'Package';
  builder.superTypes.add(namedElement);
  builder.properties.add((new PropertyBuilder()
        ..name = 'classifiers'
        ..type = _createBuiltSet(classifier))
      .build());

  return builder.build();
}

GenericType _createBuiltSet(ValueClass genericParameter) {
  final genericTypeBuilder = new GenericTypeBuilder()
    ..base = builtSet
    ..name = 'BuiltSet<${genericParameter.name}>';
  genericTypeBuilder.genericTypeValues[builtSet.genericTypes.first] =
      genericParameter;

  return genericTypeBuilder.build();
}

GenericType _createBuiltMap(ValueClass fromParameter, ValueClass toParameter) {
  final genericTypeBuilder = new GenericTypeBuilder()
    ..base = builtMap
    ..name = 'BuiltMap<${fromParameter.name}, ${toParameter.name}>';
  genericTypeBuilder.genericTypeValues[builtMap.genericTypes.first] =
      fromParameter;
  genericTypeBuilder.genericTypeValues[builtMap.genericTypes.last] =
      toParameter;

  return genericTypeBuilder.build();
}
