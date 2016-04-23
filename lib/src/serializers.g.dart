// GENERATED CODE - DO NOT MODIFY BY HAND
// 2016-04-23T00:51:18.980938Z

part of serializers;

// **************************************************************************
// Generator: BuiltJsonGenerator
// Target: library serializers
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ValueClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Property)]),
          () => new SetBuilder<Property>())
      ..add(Property.serializer))
    .build();
