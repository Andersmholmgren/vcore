import 'package:vcore/src/model/model.dart';

import 'built_metamodel.dart';
import 'coredart_metamodel.dart';

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
    ..add(valuableClass)
    ..add(valueClass)
    ..add(enumClass)
    ..add(externalClass)
    ..add(package);
  return packageBuilder.build();
}

ValueClass _modelElement;
ValueClass get modelElement => _modelElement ??= _createModelElement();

ValueClass _createModelElement() {
  return new ValueClass((cb) => cb
    ..name = 'ModelElement'
    ..isAbstract = true
    ..properties.add(new Property((b) => b
      ..name = 'docComment'
      ..type = dartString
      ..isNullable = true))
  );
}

ValueClass _namedElement;
ValueClass get namedElement => _namedElement ??= _createNamedElement();

ValueClass _createNamedElement() {
  return new ValueClass((cb) => cb
    ..name = 'NamedElement'
    ..isAbstract = true
    ..superTypes.add(modelElement)
    ..properties.add(new PropertyBuilder()
      ..name = 'name'
      ..type = dartString.toBuilder()
    )
  );
}

ValueClass _classifier;
ValueClass get classifier => _classifier ??= _createClassifier();

ValueClass _createClassifier() {
  return new ValueClass((cb) => cb
    ..name = 'Classifier'
    ..isAbstract = true
    ..superTypes.add(namedElement));
}

ValueClass _typeParameter;
ValueClass get typeParameter => _typeParameter ??= _createTypeParameter();

ValueClass _createTypeParameter() {
  return new ValueClass((cb) => cb
    ..name = 'TypeParameter'
    ..superTypes.add(namedElement)
    ..properties.add(new Property((b) => b
      ..name = 'bound'
      ..type = classifier
      ..isNullable = true)));
}

ValueClass _genericClassifier;
ValueClass get genericClassifier =>
    _genericClassifier ??= _createGenericClassifier();

ValueClass _createGenericClassifier() {
  return new ValueClass((cb) => cb
    ..name = 'GenericClassifier'
    ..isAbstract = true
    ..superTypes.add(classifier)
    ..properties.add(new Property((b) => b
      ..name = 'genericTypes'
      ..type = _createBuiltSet(typeParameter))));
}

ValueClass _genericType;
ValueClass get genericType => _genericType ??= _createGenericType();

ValueClass _createGenericType() {
  return new ValueClass((cb) => cb
    ..name = 'GenericType'
    ..superTypes.add(classifier)
    ..properties.add(new Property((b) => b
      ..name = 'base'
      ..type = classifier))
    ..properties.add(new Property((b) => b
      ..name = 'genericTypeValues'
      ..type = _createBuiltMap(typeParameter, classifier))));
}

ValueClass _property;
ValueClass get property => _property ??= _createProperty();

ValueClass _createProperty() {
  final builder = new ValueClassBuilder()
    ..name = 'Property'
    ..superTypes.add(namedElement);

  builder.properties
    ..add(new Property((b) => b
      ..name = 'type'
      ..type = classifier))
    ..add(new Property((b) => b
      ..name = 'isNullable'
      ..type = dartBool
      ..defaultValue = false))
    ..add(new Property((b) => b
      ..name = 'defaultValue'
      ..type = dartObject
      ..isNullable = true))
    ..add(new Property((b) => b
      ..name = 'derivedExpression'
      ..type = dartString
      ..isNullable = true))
    ..add(new Property((b) => b
      ..name = 'isDerived'
      ..type = dartBool
      ..derivedExpression = 'derivedExpression != null'));

  return builder.build();
}

ValueClass _valuableClass;
ValueClass get valuableClass => _valuableClass ??= _createValuableClass();

ValueClass _createValuableClass() {
  final builder = new ValueClassBuilder()
    ..name = 'ValuableClass'
    ..isAbstract = true
    ..docComment =
        '''ouch. This is needed as currently have an issue when creating meta model
where ValueClass has a field of type ValueClass but that instance doesn't
exist yet''';
  builder.superTypes.add(genericClassifier);
  builder.properties
    ..add(new Property((b) => b
      ..name = 'properties'
      ..type = _createBuiltSet(property)))
    ..add(new Property((b) => b
      ..name = 'allProperties'
      ..type = _createBuiltSet(property)
      ..derivedExpression = '''new BuiltSet<Property>(
    concat([superTypes.expand((vc) => vc.allProperties), properties]))'''))
    ..add(new Property((b) => b
      ..name = 'isAbstract'
      ..type = dartBool
      ..defaultValue = false));
  return builder.build();
}

ValueClass _valueClass;
ValueClass get valueClass => _valueClass ??= _createValueClass();

ValueClass _createValueClass() {
  return new ValueClass((cb) => cb
    ..name = 'ValueClass'
    ..superTypes.add(valuableClass)
    ..properties.add(new Property((b) => b
      ..name = 'superTypes'
      // yuck: super type should be ValueClass but that blows up atm
      ..type = _createBuiltSet(valuableClass))));
}

ValueClass _externalClass;
ValueClass get externalClass => _externalClass ??= _createExternalClass();

ValueClass _createExternalClass() => new ValueClass((cb) => cb
  ..name = 'ExternalClass'
  ..superTypes.add(genericClassifier));

ValueClass _enumClass;
ValueClass get enumClass => _enumClass ??= _createEnumClass();

ValueClass _createEnumClass() {
  return new ValueClass((cb) => cb
    ..name = 'EnumClass'
    ..superTypes.add(classifier)
    ..properties.add(new Property((b) => b
      ..name = 'literals'
      ..type = _createBuiltSet(dartString))));
}

ValueClass _package;
ValueClass get package => _package ??= _createPackage();

ValueClass _createPackage() {
  return new ValueClass((cb) => cb
    ..name = 'Package'
    ..superTypes.add(namedElement)
    ..properties.add(new Property((b) => b
      ..name = 'classifiers'
      ..type = _createBuiltSet(classifier))));
}

GenericType _createBuiltSet(Classifier genericParameter) {
  return new GenericType((cb) => cb
    ..base = builtSet
    ..name = 'BuiltSet<${genericParameter.name}>'
    ..genericTypeValues[builtSet.genericTypes.first] = genericParameter);
}

GenericType _createBuiltMap(Classifier fromParameter, Classifier toParameter) {
  return new GenericType((cb) => cb
    ..base = builtMap
    ..name = 'BuiltMap<${fromParameter.name}, ${toParameter.name}>'
    ..genericTypeValues[builtMap.genericTypes.first] = fromParameter
    ..genericTypeValues[builtMap.genericTypes.last] = toParameter);
}
