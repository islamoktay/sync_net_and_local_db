// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_request_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOfflineRequestLocalModelCollection on Isar {
  IsarCollection<OfflineRequestLocalModel> get offlineRequestLocalModels =>
      this.collection();
}

const OfflineRequestLocalModelSchema = CollectionSchema(
  name: r'OfflineRequestLocalModel',
  id: 4777590789117092587,
  properties: {
    r'bodyAsJson': PropertySchema(
      id: 0,
      name: r'bodyAsJson',
      type: IsarType.string,
    ),
    r'method': PropertySchema(
      id: 1,
      name: r'method',
      type: IsarType.byte,
      enumMap: _OfflineRequestLocalModelmethodEnumValueMap,
    ),
    r'moduleName': PropertySchema(
      id: 2,
      name: r'moduleName',
      type: IsarType.string,
    ),
    r'queryAsJson': PropertySchema(
      id: 3,
      name: r'queryAsJson',
      type: IsarType.string,
    ),
    r'reason': PropertySchema(
      id: 4,
      name: r'reason',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 5,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _offlineRequestLocalModelEstimateSize,
  serialize: _offlineRequestLocalModelSerialize,
  deserialize: _offlineRequestLocalModelDeserialize,
  deserializeProp: _offlineRequestLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _offlineRequestLocalModelGetId,
  getLinks: _offlineRequestLocalModelGetLinks,
  attach: _offlineRequestLocalModelAttach,
  version: '3.1.0+1',
);

int _offlineRequestLocalModelEstimateSize(
  OfflineRequestLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bodyAsJson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.moduleName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.queryAsJson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.reason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _offlineRequestLocalModelSerialize(
  OfflineRequestLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bodyAsJson);
  writer.writeByte(offsets[1], object.method.index);
  writer.writeString(offsets[2], object.moduleName);
  writer.writeString(offsets[3], object.queryAsJson);
  writer.writeString(offsets[4], object.reason);
  writer.writeString(offsets[5], object.url);
}

OfflineRequestLocalModel _offlineRequestLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OfflineRequestLocalModel();
  object.bodyAsJson = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.method = _OfflineRequestLocalModelmethodValueEnumMap[
          reader.readByteOrNull(offsets[1])] ??
      RequestMethods.get;
  object.moduleName = reader.readStringOrNull(offsets[2]);
  object.queryAsJson = reader.readStringOrNull(offsets[3]);
  object.reason = reader.readStringOrNull(offsets[4]);
  object.url = reader.readStringOrNull(offsets[5]);
  return object;
}

P _offlineRequestLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (_OfflineRequestLocalModelmethodValueEnumMap[
              reader.readByteOrNull(offset)] ??
          RequestMethods.get) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _OfflineRequestLocalModelmethodEnumValueMap = {
  'get': 0,
  'post': 1,
  'patch': 2,
  'delete': 3,
};
const _OfflineRequestLocalModelmethodValueEnumMap = {
  0: RequestMethods.get,
  1: RequestMethods.post,
  2: RequestMethods.patch,
  3: RequestMethods.delete,
};

Id _offlineRequestLocalModelGetId(OfflineRequestLocalModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _offlineRequestLocalModelGetLinks(
    OfflineRequestLocalModel object) {
  return [];
}

void _offlineRequestLocalModelAttach(
    IsarCollection<dynamic> col, Id id, OfflineRequestLocalModel object) {
  object.id = id;
}

extension OfflineRequestLocalModelQueryWhereSort on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QWhere> {
  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OfflineRequestLocalModelQueryWhere on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QWhereClause> {
  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OfflineRequestLocalModelQueryFilter on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QFilterCondition> {
  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bodyAsJson',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bodyAsJson',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bodyAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bodyAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bodyAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bodyAsJson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bodyAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bodyAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      bodyAsJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bodyAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      bodyAsJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bodyAsJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bodyAsJson',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> bodyAsJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bodyAsJson',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> methodEqualTo(RequestMethods value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: value,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> methodGreaterThan(
    RequestMethods value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'method',
        value: value,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> methodLessThan(
    RequestMethods value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'method',
        value: value,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> methodBetween(
    RequestMethods lower,
    RequestMethods upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'method',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'moduleName',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'moduleName',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moduleName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      moduleNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      moduleNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'moduleName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moduleName',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> moduleNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'moduleName',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'queryAsJson',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'queryAsJson',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'queryAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'queryAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'queryAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'queryAsJson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'queryAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'queryAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      queryAsJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'queryAsJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      queryAsJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'queryAsJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'queryAsJson',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> queryAsJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'queryAsJson',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reason',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reason',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      reasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      reasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> reasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
          QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel,
      QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension OfflineRequestLocalModelQueryObject on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QFilterCondition> {}

extension OfflineRequestLocalModelQueryLinks on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QFilterCondition> {}

extension OfflineRequestLocalModelQuerySortBy on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QSortBy> {
  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByBodyAsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyAsJson', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByBodyAsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyAsJson', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByModuleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moduleName', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByModuleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moduleName', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByQueryAsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'queryAsJson', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByQueryAsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'queryAsJson', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension OfflineRequestLocalModelQuerySortThenBy on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QSortThenBy> {
  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByBodyAsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyAsJson', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByBodyAsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyAsJson', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByModuleName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moduleName', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByModuleNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moduleName', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByQueryAsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'queryAsJson', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByQueryAsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'queryAsJson', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QAfterSortBy>
      thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension OfflineRequestLocalModelQueryWhereDistinct on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QDistinct> {
  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QDistinct>
      distinctByBodyAsJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bodyAsJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QDistinct>
      distinctByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'method');
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QDistinct>
      distinctByModuleName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'moduleName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QDistinct>
      distinctByQueryAsJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'queryAsJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QDistinct>
      distinctByReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reason', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OfflineRequestLocalModel, OfflineRequestLocalModel, QDistinct>
      distinctByUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension OfflineRequestLocalModelQueryProperty on QueryBuilder<
    OfflineRequestLocalModel, OfflineRequestLocalModel, QQueryProperty> {
  QueryBuilder<OfflineRequestLocalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OfflineRequestLocalModel, String?, QQueryOperations>
      bodyAsJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bodyAsJson');
    });
  }

  QueryBuilder<OfflineRequestLocalModel, RequestMethods, QQueryOperations>
      methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'method');
    });
  }

  QueryBuilder<OfflineRequestLocalModel, String?, QQueryOperations>
      moduleNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'moduleName');
    });
  }

  QueryBuilder<OfflineRequestLocalModel, String?, QQueryOperations>
      queryAsJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'queryAsJson');
    });
  }

  QueryBuilder<OfflineRequestLocalModel, String?, QQueryOperations>
      reasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reason');
    });
  }

  QueryBuilder<OfflineRequestLocalModel, String?, QQueryOperations>
      urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}
