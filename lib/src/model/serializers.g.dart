// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-30T00:55:23.645110Z

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
          () => new MapBuiler<TypeParameter, Classifier>())
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
      ..add(EnumClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(String)]),
          () => new SetBuilder<String>())
      ..add(ExternalClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(TypeParameter)]),
          () => new SetBuilder<TypeParameter>())
      ..add(Package.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Classifier)]),
          () => new SetBuilder<Classifier>()))
    .build();
