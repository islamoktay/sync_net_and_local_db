// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserLocalModelCollection on Isar {
  IsarCollection<UserLocalModel> get userLocalModels => this.collection();
}

const UserLocalModelSchema = CollectionSchema(
  name: r'UserLocalModel',
  id: 1805101702450821015,
  properties: {
    r'mail': PropertySchema(
      id: 0,
      name: r'mail',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'netId': PropertySchema(
      id: 2,
      name: r'netId',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 3,
      name: r'phone',
      type: IsarType.string,
    ),
    r'updatedTime': PropertySchema(
      id: 4,
      name: r'updatedTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _userLocalModelEstimateSize,
  serialize: _userLocalModelSerialize,
  deserialize: _userLocalModelDeserialize,
  deserializeProp: _userLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userLocalModelGetId,
  getLinks: _userLocalModelGetLinks,
  attach: _userLocalModelAttach,
  version: '3.1.0+1',
);

int _userLocalModelEstimateSize(
  UserLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.mail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.netId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userLocalModelSerialize(
  UserLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.mail);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.netId);
  writer.writeString(offsets[3], object.phone);
  writer.writeDateTime(offsets[4], object.updatedTime);
}

UserLocalModel _userLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserLocalModel();
  object.id = id;
  object.mail = reader.readStringOrNull(offsets[0]);
  object.name = reader.readStringOrNull(offsets[1]);
  object.netId = reader.readStringOrNull(offsets[2]);
  object.phone = reader.readStringOrNull(offsets[3]);
  object.updatedTime = reader.readDateTimeOrNull(offsets[4]);
  return object;
}

P _userLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userLocalModelGetId(UserLocalModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _userLocalModelGetLinks(UserLocalModel object) {
  return [];
}

void _userLocalModelAttach(
    IsarCollection<dynamic> col, Id id, UserLocalModel object) {
  object.id = id;
}

extension UserLocalModelQueryWhereSort
    on QueryBuilder<UserLocalModel, UserLocalModel, QWhere> {
  QueryBuilder<UserLocalModel, UserLocalModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserLocalModelQueryWhere
    on QueryBuilder<UserLocalModel, UserLocalModel, QWhereClause> {
  QueryBuilder<UserLocalModel, UserLocalModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterWhereClause> idBetween(
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

extension UserLocalModelQueryFilter
    on QueryBuilder<UserLocalModel, UserLocalModel, QFilterCondition> {
  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mail',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mail',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mail',
        value: '',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      mailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mail',
        value: '',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'netId',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'netId',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'netId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'netId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'netId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'netId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'netId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'netId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'netId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'netId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'netId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      netIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'netId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      updatedTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedTime',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      updatedTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedTime',
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      updatedTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      updatedTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      updatedTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterFilterCondition>
      updatedTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UserLocalModelQueryObject
    on QueryBuilder<UserLocalModel, UserLocalModel, QFilterCondition> {}

extension UserLocalModelQueryLinks
    on QueryBuilder<UserLocalModel, UserLocalModel, QFilterCondition> {}

extension UserLocalModelQuerySortBy
    on QueryBuilder<UserLocalModel, UserLocalModel, QSortBy> {
  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> sortByMail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mail', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> sortByMailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mail', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> sortByNetId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'netId', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> sortByNetIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'netId', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy>
      sortByUpdatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedTime', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy>
      sortByUpdatedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedTime', Sort.desc);
    });
  }
}

extension UserLocalModelQuerySortThenBy
    on QueryBuilder<UserLocalModel, UserLocalModel, QSortThenBy> {
  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByMail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mail', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByMailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mail', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByNetId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'netId', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByNetIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'netId', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy>
      thenByUpdatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedTime', Sort.asc);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QAfterSortBy>
      thenByUpdatedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedTime', Sort.desc);
    });
  }
}

extension UserLocalModelQueryWhereDistinct
    on QueryBuilder<UserLocalModel, UserLocalModel, QDistinct> {
  QueryBuilder<UserLocalModel, UserLocalModel, QDistinct> distinctByMail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QDistinct> distinctByNetId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'netId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserLocalModel, UserLocalModel, QDistinct>
      distinctByUpdatedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedTime');
    });
  }
}

extension UserLocalModelQueryProperty
    on QueryBuilder<UserLocalModel, UserLocalModel, QQueryProperty> {
  QueryBuilder<UserLocalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserLocalModel, String?, QQueryOperations> mailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mail');
    });
  }

  QueryBuilder<UserLocalModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<UserLocalModel, String?, QQueryOperations> netIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'netId');
    });
  }

  QueryBuilder<UserLocalModel, String?, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<UserLocalModel, DateTime?, QQueryOperations>
      updatedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedTime');
    });
  }
}
