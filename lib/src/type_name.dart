class TypeName {
  final String baseName, fullTypeName;
  final Iterable<TypeName> typeParameters;

  TypeName get baseTypeName => new TypeName.parse(baseName);

  bool get isGeneric => typeParameters.isNotEmpty;

  bool get isSet => baseName == 'BuiltSet';
  bool get isList => baseName == 'BuiltList';
  bool get isCollection => isSet || isList;
  bool get isMap => baseName == 'BuiltMap';
  bool get isMultiValued => isCollection || isMap;

  TypeName._(this.baseName, this.typeParameters, this.fullTypeName);
  TypeName(String baseName, {Iterable<TypeName> typeParameters: const []})
      : this._(
            baseName,
            typeParameters,
            "$baseName${typeParameters.isEmpty
  ? ''
    : '<${typeParameters.map((t) => t.toString()).join(', ')}>'}");

  factory TypeName.parse(String fullTypeName) {
    final startIndex = fullTypeName.indexOf('<');
    if (startIndex < 0) return new TypeName(fullTypeName);

    final baseName = fullTypeName.substring(0, startIndex);

    final endIndex = fullTypeName.lastIndexOf('>');
    if (endIndex < 0) throw new ArgumentError('$fullTypeName has missing >');

    final typeParamNames = fullTypeName
        .substring(startIndex + 1, endIndex)
        .split(',')
        .map((s) => s.trim());
    final typeParameters = typeParamNames.map((p) => new TypeName.parse(p));

    final typeName = new TypeName(baseName, typeParameters: typeParameters);
    assert(typeName.fullTypeName ==
        fullTypeName); // actually could have whitespace diffs
    return typeName;
  }

  String toString() => fullTypeName;

  bool operator ==(other) =>
      other is TypeName && other.fullTypeName == fullTypeName;

  int get hashCode => fullTypeName.hashCode;
}

abstract class BuiltBuilderNamingPattern {
  static List<String> _knownCollectionBuilderNames = [
    'ListBuilder',
    'SetBuilder',
    'MapBuilder'
  ];

  const BuiltBuilderNamingPattern();

  String builderNameFor(String builtName);
  String builtNameFor(String builderName);
  bool isBuiltName(String name);
  bool isBuilderName(String name) => name?.endsWith('Builder');

  TypeName toBuilderName(TypeName builtTypeName) =>
      new TypeName(builderNameFor(builtTypeName.baseName),
          typeParameters:
              builtTypeName.typeParameters.map((p) => toBuilderName(p)));

  TypeName toBuiltName(TypeName builderTypeName) =>
      new TypeName(builderNameFor(builderTypeName.baseName),
          typeParameters:
              builderTypeName.typeParameters.map((p) => toBuiltName(p)));

  static const BuiltBuilderNamingPattern standard =
      const _StandardBuiltBuilderNamingPattern();

  static const BuiltBuilderNamingPattern collections =
      const _CollectionBuiltBuilderNamingPattern();

  static BuiltBuilderNamingPattern patternForBuiltName(String builtName) =>
      builtName.startsWith('Built') ? collections : standard;

  static BuiltBuilderNamingPattern patternForBuilderName(String builderName) =>
      _knownCollectionBuilderNames.contains(builderName)
          ? collections
          : standard;

  /// Attempts to determine what naming scheme is used and then toggle from
  /// builtValue name <-> builder name
  /// Note: it falls back to assuming it is a [standard] built name which is
  /// not guaranteed to be true.
  static TypeName toggleName(TypeName typeName) {
    if (_knownCollectionBuilderNames.contains(typeName.baseName)) {
      return collections.toBuiltName(typeName);
    }

    if (collections.isBuiltName(typeName.baseName)) {
      return collections.toBuilderName(typeName);
    }

    if (standard.isBuilderName(typeName.baseName)) {
      return standard.toBuiltName(typeName);
    }

    return standard.toBuilderName(typeName);
  }
}

// Foo / FooBuilder
class _StandardBuiltBuilderNamingPattern extends BuiltBuilderNamingPattern {
  const _StandardBuiltBuilderNamingPattern();

  @override
  String builderNameFor(String builtName) =>
      isBuiltName(builtName) ? '${builtName}Builder' : builtName;

  @override
  String builtNameFor(String builderName) => isBuilderName(builderName)
      ? builderName.substring(0, builderName.length - 'Builder'.length)
      : builderName;

  @override
  bool isBuiltName(String name) => !isBuilderName(name);
}

// BuiltFoo / FooBuilder
class _CollectionBuiltBuilderNamingPattern extends BuiltBuilderNamingPattern {
  const _CollectionBuiltBuilderNamingPattern();

  @override
  String builderNameFor(String builtName) => isBuiltName(builtName)
      ? '${builtName.substring('Built'.length)}Builder'
      : builtName;

  @override
  String builtNameFor(String builderName) => isBuilderName(builderName)
      ? 'Built' +
          builderName.substring(0, builderName.length - 'Builder'.length)
      : builderName;

  @override
  bool isBuiltName(String name) =>
      name?.startsWith('Built') && !isBuilderName(name);
}

//typedef ClassifierBuilder TypeNameToClassifierBuilder(TypeName typeName);

//main() {
//  final std = new _StandardBuiltBuilderNamingPattern();
//  final col = new _CollectionBuiltBuilderNamingPattern();
//
//  print(std.builderNameFor('Foo'));
//  print(std.builtNameFor('FooBuilder'));
//
//  print(col.builderNameFor('BuiltMap'));
//  print(col.builtNameFor('ListBuilder'));
//}
