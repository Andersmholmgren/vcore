import 'package:vcore/src/model/model.dart';

Package get vcorePackage => _vcorePackage ??= _createPackage();

Package _vcorePackage;

Package _createPackage() {
  final packageBuilder = new PackageBuilder()..name = 'vcore';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(_namedElement)..add(_valueClass);
  return packageBuilder.build();
}

ValueClass __namedElement;
ValueClass get _namedElement => __namedElement ??= _createNamedElement();

ValueClass _createNamedElement() {
  final builder = new ValueClassBuilder()..name = 'NamedElement';
  builder.properties..add((new PropertyBuilder()..name = 'name').build());

  return builder.build();
}

ValueClass __classifier;
ValueClass get _classifier => __classifier ??= _createClassifier();

ValueClass _createClassifier() {
  final builder = new ValueClassBuilder()..name = 'Classifier';
  builder.superTypes.add(_namedElement);

  return builder.build();
}

ValueClass __valueClass;
ValueClass get _valueClass => __valueClass ??= _createValueClass();

ValueClass _createValueClass() {
  final builder = new ValueClassBuilder()..name = 'ValueClass';
  builder.superTypes.add(_classifier);
//  builder.properties.add()
}
