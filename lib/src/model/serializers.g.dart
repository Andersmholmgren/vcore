// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-23T04:10:50.721233Z

part of serializers;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library serializers
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(TypeParameter.serializer)
      ..add(ValueClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(TypeParameter)]),
          () => new SetBuilder<TypeParameter>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Property)]),
          () => new SetBuilder<Property>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(ValueClass)]),
          () => new SetBuilder<ValueClass>())
      ..add(ExternalClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(TypeParameter)]),
          () => new SetBuilder<TypeParameter>())
      ..add(Property.serializer)
      ..add(Package.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Classifier)]),
          () => new SetBuilder<Classifier>()))
    .build();
