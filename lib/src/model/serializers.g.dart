// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-23T02:29:49.010183Z

part of serializers;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library serializers
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Package.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Property)]),
          () => new SetBuilder<Property>())
      ..add(ValueClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Property)]),
          () => new SetBuilder<Property>())
      ..add(Property.serializer))
    .build();
