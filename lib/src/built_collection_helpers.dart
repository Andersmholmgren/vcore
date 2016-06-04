import 'package:vcore/src/vcore_metamodel/built_metamodel.dart';
import 'package:vcore/src/model/model.dart';

GenericTypeBuilder createBuiltSet(ClassifierBuilder genericParameter) {
  return new GenericTypeBuilder()
    ..base = builtSet
    ..name = 'BuiltSet<${genericParameter.name}>'
    ..genericTypeValues[builtSet.genericTypes.first] =
    genericParameter.build(); // DAMN
}

GenericTypeBuilder createBuiltList(ClassifierBuilder genericParameter) {
  return new GenericTypeBuilder()
    ..base = builtList
    ..name = 'BuiltList<${genericParameter.name}>'
    ..genericTypeValues[builtList.genericTypes.first] =
    genericParameter.build();
}

GenericTypeBuilder createBuiltMap(
  ClassifierBuilder fromParameter, ClassifierBuilder toParameter) {
  return new GenericTypeBuilder()
    ..base = builtMap
    ..name = 'BuiltMap<${fromParameter.name}, ${toParameter.name}>'
    ..genericTypeValues[builtMap.genericTypes.first] = fromParameter.build()
    ..genericTypeValues[builtMap.genericTypes.last] = toParameter.build();
}
