library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_json/built_json.dart';
import 'package:vcore/src/model/model.dart';

part 'serializers.g.dart';

/// Example of how to use built_json.
///
/// Declare a top level [Serializers] field called
/// serializers. The built_json code generator will provide the
/// implementation. You usually only need to do this once per project.
Serializers serializers =
    (_$serializers.toBuilder()..add(_classifierSerializer)).build();

//final x = new SerializersBuilder()..;
final _ClassifierSerializer _classifierSerializer = new _ClassifierSerializer();

class _ClassifierSerializer implements StructuredSerializer<Classifier> {
  @override
  Classifier deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return serializers.deserialize(serialized);
  }

  @override
  Iterable serialize(Serializers serializers, Classifier object,
      {FullType specifiedType: FullType.unspecified}) {
    return object != null ? serializers.serialize(object) : [];
  }

  @override
  Iterable<Type> get types => [Classifier];

  @override
  String get wireName => 'Classifier';
}
