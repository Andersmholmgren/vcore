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
    ..properties.add(new PropertyBuilder()
      ..name = 'docComment'
      ..type = dartString.toBuilder()
      ..isNullable = true)
  );
}

ValueClass _namedElement;
ValueClass get namedElement => _namedElement ??= _createNamedElement();

ValueClass _createNamedElement() {
  return new ValueClass((cb) => cb
    ..name = 'NamedElement'
    ..isAbstract = true
    ..superTypes.add(modelElement.toBuilder())
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
    ..superTypes.add(namedElement.toBuilder()));
}

ValueClass _typeParameter;
ValueClass get typeParameter => _typeParameter ??= _createTypeParameter();

ValueClass _createTypeParameter() {
  return new ValueClass((cb) => cb
    ..name = 'TypeParameter'
    ..superTypes.add(namedElement.toBuilder())
    ..properties.add(new PropertyBuilder()
      ..name = 'bound'
      ..type = classifier.toBuilder()
      ..isNullable = true));
}

ValueClass _genericClassifier;
ValueClass get genericClassifier =>
    _genericClassifier ??= _createGenericClassifier();

ValueClass _createGenericClassifier() {
  return new ValueClass((cb) => cb
    ..name = 'GenericClassifier'
    ..isAbstract = true
    ..superTypes.add(classifier.toBuilder())
    ..properties.add(new PropertyBuilder()
      ..name = 'genericTypes'
      ..type = _createBuiltSet(typeParameter).toBuilder()));
}

ValueClass _genericType;
ValueClass get genericType => _genericType ??= _createGenericType();

ValueClass _createGenericType() {
  return new ValueClass((cb) => cb
    ..name = 'GenericType'
    ..superTypes.add(classifier.toBuilder())
    ..properties.add(new PropertyBuilder()
      ..name = 'base'
      ..type = classifier.toBuilder())
    ..properties.add(new PropertyBuilder()
      ..name = 'genericTypeValues'
      ..type = _createBuiltMap(typeParameter, classifier).toBuilder()));
}

ValueClass _property;
ValueClass get property => _property ??= _createProperty();

ValueClass _createProperty() {
  final builder = new ValueClassBuilder()
    ..name = 'Property'
    ..superTypes.add(namedElement.toBuilder());

  builder.properties
    ..add(new PropertyBuilder()
      ..name = 'type'
      ..type = classifier.toBuilder())
    ..add(new PropertyBuilder()
      ..name = 'isNullable'
      ..type = dartBool.toBuilder()
      ..defaultValue = false)
    ..add(new PropertyBuilder()
      ..name = 'defaultValue'
      ..type = dartObject.toBuilder()
      ..isNullable = true)
    ..add(new PropertyBuilder()
      ..name = 'derivedExpression'
      ..type = dartString.toBuilder()
      ..isNullable = true)
    ..add(new PropertyBuilder()
      ..name = 'isDerived'
      ..type = dartBool.toBuilder()
      ..derivedExpression = 'derivedExpression != null');

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
  builder.superTypes.add(genericClassifier.toBuilder());
  builder.properties
    ..add(new PropertyBuilder()
      ..name = 'properties'
      ..type = _createBuiltSet(property).toBuilder())
    ..add(new PropertyBuilder()
      ..name = 'allProperties'
      ..type = _createBuiltSet(property).toBuilder()
      ..derivedExpression = '''new BuiltSet<Property>(
    concat([superTypes.expand((vc) => vc.allProperties), properties]))''')
    ..add(new PropertyBuilder()
      ..name = 'isAbstract'
      ..type = dartBool.toBuilder()
      ..defaultValue = false);
  return builder.build();
}

ValueClass _valueClass;
ValueClass get valueClass => _valueClass ??= _createValueClass();

ValueClass _createValueClass() {
  return new ValueClass((cb) => cb
    ..name = 'ValueClass'
    ..superTypes.add(valuableClass.toBuilder())
    ..properties.add(new PropertyBuilder()
      ..name = 'superTypes'
      // yuck: super type should be ValueClass but that blows up atm
      ..type = _createBuiltSet(valuableClass).toBuilder()));
}

ValueClass _externalClass;
ValueClass get externalClass => _externalClass ??= _createExternalClass();

ValueClass _createExternalClass() => new ValueClass((cb) => cb
  ..name = 'ExternalClass'
  ..superTypes.add(genericClassifier.toBuilder()));

ValueClass _enumClass;
ValueClass get enumClass => _enumClass ??= _createEnumClass();

ValueClass _createEnumClass() {
  return new ValueClass((cb) => cb
    ..name = 'EnumClass'
    ..superTypes.add(classifier.toBuilder())
    ..properties.add(new PropertyBuilder()
      ..name = 'literals'
      ..type = _createBuiltSet(dartString).toBuilder()));
}

ValueClass _package;
ValueClass get package => _package ??= _createPackage();

ValueClass _createPackage() {
  return new ValueClass((cb) => cb
    ..name = 'Package'
    ..superTypes.add(namedElement.toBuilder())
    ..properties.add(new PropertyBuilder()
      ..name = 'classifiers'
      ..type = _createBuiltSet(classifier).toBuilder())
  // TODO: another type loop
//    ..properties.add(new PropertyBuilder()
//      ..name = 'subPackages'
//      ..type = _createBuiltSet(package)))
  );
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


Map<Type, Classifier> __typeMap;
Map<Type, Classifier> get _typeMap => __typeMap ??= _buildTypeMap();

Classifier reflectClassifier(Type type) => _typeMap[type];
ValueClass reflectVClass(Type type) => reflectClassifier(type) as ValueClass;

Map<Type, Classifier> _buildTypeMap() {
  final typeMap = <Type, Classifier>{};

  typeMap[Classifier] = classifier;
  typeMap[EnumClass] = enumClass;
  typeMap[ExternalClass] = externalClass;
  typeMap[GenericClassifier] = genericClassifier;
  typeMap[GenericType] = genericType;
  typeMap[ModelElement] = modelElement;
  typeMap[NamedElement] = namedElement;
  typeMap[Package] = package;
  typeMap[Property] = property;
  typeMap[TypeParameter] = typeParameter;
  typeMap[ValuableClass] = valueClass;
  typeMap[ValueClass] = valueClass;

  return typeMap;
}
