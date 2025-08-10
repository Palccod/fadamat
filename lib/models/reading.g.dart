// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReadingCollection on Isar {
  IsarCollection<Reading> get readings => this.collection();
}

const ReadingSchema = CollectionSchema(
  name: r'Reading',
  id: -3353310682807968152,
  properties: {
    r'conductivity': PropertySchema(
      id: 0,
      name: r'conductivity',
      type: IsarType.double,
    ),
    r'crop': PropertySchema(
      id: 1,
      name: r'crop',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 2,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'k': PropertySchema(
      id: 3,
      name: r'k',
      type: IsarType.double,
    ),
    r'lighting': PropertySchema(
      id: 4,
      name: r'lighting',
      type: IsarType.double,
    ),
    r'moisture': PropertySchema(
      id: 5,
      name: r'moisture',
      type: IsarType.double,
    ),
    r'n': PropertySchema(
      id: 6,
      name: r'n',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'p': PropertySchema(
      id: 8,
      name: r'p',
      type: IsarType.double,
    ),
    r'ph': PropertySchema(
      id: 9,
      name: r'ph',
      type: IsarType.double,
    ),
    r'phone': PropertySchema(
      id: 10,
      name: r'phone',
      type: IsarType.string,
    ),
    r'soil': PropertySchema(
      id: 11,
      name: r'soil',
      type: IsarType.string,
    ),
    r'temperature': PropertySchema(
      id: 12,
      name: r'temperature',
      type: IsarType.double,
    )
  },
  estimateSize: _readingEstimateSize,
  serialize: _readingSerialize,
  deserialize: _readingDeserialize,
  deserializeProp: _readingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _readingGetId,
  getLinks: _readingGetLinks,
  attach: _readingAttach,
  version: '3.1.0+1',
);

int _readingEstimateSize(
  Reading object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.crop.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.phone.length * 3;
  bytesCount += 3 + object.soil.length * 3;
  return bytesCount;
}

void _readingSerialize(
  Reading object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.conductivity);
  writer.writeString(offsets[1], object.crop);
  writer.writeDateTime(offsets[2], object.date);
  writer.writeDouble(offsets[3], object.k);
  writer.writeDouble(offsets[4], object.lighting);
  writer.writeDouble(offsets[5], object.moisture);
  writer.writeDouble(offsets[6], object.n);
  writer.writeString(offsets[7], object.name);
  writer.writeDouble(offsets[8], object.p);
  writer.writeDouble(offsets[9], object.ph);
  writer.writeString(offsets[10], object.phone);
  writer.writeString(offsets[11], object.soil);
  writer.writeDouble(offsets[12], object.temperature);
}

Reading _readingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Reading();
  object.conductivity = reader.readDouble(offsets[0]);
  object.crop = reader.readString(offsets[1]);
  object.date = reader.readDateTime(offsets[2]);
  object.id = id;
  object.k = reader.readDouble(offsets[3]);
  object.lighting = reader.readDouble(offsets[4]);
  object.moisture = reader.readDouble(offsets[5]);
  object.n = reader.readDouble(offsets[6]);
  object.name = reader.readString(offsets[7]);
  object.p = reader.readDouble(offsets[8]);
  object.ph = reader.readDouble(offsets[9]);
  object.phone = reader.readString(offsets[10]);
  object.soil = reader.readString(offsets[11]);
  object.temperature = reader.readDouble(offsets[12]);
  return object;
}

P _readingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _readingGetId(Reading object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _readingGetLinks(Reading object) {
  return [];
}

void _readingAttach(IsarCollection<dynamic> col, Id id, Reading object) {
  object.id = id;
}

extension ReadingQueryWhereSort on QueryBuilder<Reading, Reading, QWhere> {
  QueryBuilder<Reading, Reading, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ReadingQueryWhere on QueryBuilder<Reading, Reading, QWhereClause> {
  QueryBuilder<Reading, Reading, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Reading, Reading, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterWhereClause> idBetween(
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

extension ReadingQueryFilter
    on QueryBuilder<Reading, Reading, QFilterCondition> {
  QueryBuilder<Reading, Reading, QAfterFilterCondition> conductivityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conductivity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> conductivityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'conductivity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> conductivityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'conductivity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> conductivityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'conductivity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'crop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'crop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'crop',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'crop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'crop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'crop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'crop',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'crop',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> cropIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'crop',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> kEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'k',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> kGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'k',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> kLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'k',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> kBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'k',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> lightingEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lighting',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> lightingGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lighting',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> lightingLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lighting',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> lightingBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lighting',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> moistureEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moisture',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> moistureGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moisture',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> moistureLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moisture',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> moistureBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moisture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'n',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'n',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'n',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'n',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameEqualTo(
    String value, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameGreaterThan(
    String value, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameLessThan(
    String value, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> pEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'p',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> pGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'p',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> pLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'p',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> pBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'p',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ph',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ph',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ph',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ph',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneEqualTo(
    String value, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneGreaterThan(
    String value, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneLessThan(
    String value, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneBetween(
    String lower,
    String upper, {
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneStartsWith(
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneEndsWith(
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

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'soil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'soil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'soil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'soil',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'soil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'soil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'soil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'soil',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'soil',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> soilIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'soil',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> temperatureEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> temperatureGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> temperatureLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> temperatureBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ReadingQueryObject
    on QueryBuilder<Reading, Reading, QFilterCondition> {}

extension ReadingQueryLinks
    on QueryBuilder<Reading, Reading, QFilterCondition> {}

extension ReadingQuerySortBy on QueryBuilder<Reading, Reading, QSortBy> {
  QueryBuilder<Reading, Reading, QAfterSortBy> sortByConductivity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conductivity', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByConductivityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conductivity', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByCrop() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crop', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByCropDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crop', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByK() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByKDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByLighting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lighting', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByLightingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lighting', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByMoisture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moisture', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByMoistureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moisture', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByN() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'n', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByNDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'n', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'p', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'p', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByPh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ph', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByPhDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ph', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortBySoil() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soil', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortBySoilDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soil', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> sortByTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.desc);
    });
  }
}

extension ReadingQuerySortThenBy
    on QueryBuilder<Reading, Reading, QSortThenBy> {
  QueryBuilder<Reading, Reading, QAfterSortBy> thenByConductivity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conductivity', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByConductivityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conductivity', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByCrop() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crop', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByCropDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'crop', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByK() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByKDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'k', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByLighting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lighting', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByLightingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lighting', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByMoisture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moisture', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByMoistureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moisture', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByN() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'n', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByNDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'n', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'p', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'p', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByPh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ph', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByPhDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ph', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenBySoil() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soil', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenBySoilDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soil', Sort.desc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.asc);
    });
  }

  QueryBuilder<Reading, Reading, QAfterSortBy> thenByTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.desc);
    });
  }
}

extension ReadingQueryWhereDistinct
    on QueryBuilder<Reading, Reading, QDistinct> {
  QueryBuilder<Reading, Reading, QDistinct> distinctByConductivity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'conductivity');
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByCrop(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'crop', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByK() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'k');
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByLighting() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lighting');
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByMoisture() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'moisture');
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByN() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'n');
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByP() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'p');
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByPh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ph');
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctBySoil(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'soil', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Reading, Reading, QDistinct> distinctByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temperature');
    });
  }
}

extension ReadingQueryProperty
    on QueryBuilder<Reading, Reading, QQueryProperty> {
  QueryBuilder<Reading, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Reading, double, QQueryOperations> conductivityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'conductivity');
    });
  }

  QueryBuilder<Reading, String, QQueryOperations> cropProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'crop');
    });
  }

  QueryBuilder<Reading, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Reading, double, QQueryOperations> kProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'k');
    });
  }

  QueryBuilder<Reading, double, QQueryOperations> lightingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lighting');
    });
  }

  QueryBuilder<Reading, double, QQueryOperations> moistureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'moisture');
    });
  }

  QueryBuilder<Reading, double, QQueryOperations> nProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'n');
    });
  }

  QueryBuilder<Reading, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Reading, double, QQueryOperations> pProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'p');
    });
  }

  QueryBuilder<Reading, double, QQueryOperations> phProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ph');
    });
  }

  QueryBuilder<Reading, String, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<Reading, String, QQueryOperations> soilProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'soil');
    });
  }

  QueryBuilder<Reading, double, QQueryOperations> temperatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temperature');
    });
  }
}
