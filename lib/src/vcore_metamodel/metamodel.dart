import 'package:vcore/src/model/model.dart';

Package get vcorePackage => _vcorePackage ??= _createPackage();

Package _vcorePackage;

Package _createPackage() {

  final packageBuilder = new PackageBuilder()..name='vcore';
  final classifiers = packageBuilder.classifiers;
  classifiers..add(_createNamedElementClass())..add(_createValueClass());
  return packageBuilder.build();
}

ValueClass _createNamedElementClass() {
  final builder = (new ValueClassBuilder()..name = 'NamedElement');
  builder.properties..add((new PropertyBuilder()..name='name').build());

  return builder.build();
}

ValueClass _createValueClass() {

}
