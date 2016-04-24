// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-24T04:52:09.971857Z

part of serializers;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library serializers
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GenericType.serializer)
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(TypeParameter),
            const FullType(Classifier)
          ]),
          () => new MapBuilder<TypeParameter, Classifier>())
      ..add(TypeParameter.serializer)
      ..add(Property.serializer)
      ..add(ValueClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(TypeParameter)]),
          () => new SetBuilder<TypeParameter>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Property)]),
          () => new SetBuilder<Property>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(ValuableClass)]),
          () => new SetBuilder<ValuableClass>())
      ..add(ExternalClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(TypeParameter)]),
          () => new SetBuilder<TypeParameter>())
      ..add(Package.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Classifier)]),
          () => new SetBuilder<Classifier>()))
    .build();
