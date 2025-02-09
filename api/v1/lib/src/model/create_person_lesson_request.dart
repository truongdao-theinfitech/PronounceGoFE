//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_person_lesson_request.g.dart';

/// CreatePersonLessonRequest
///
/// Properties:
/// * [name]
/// * [isPublic]
/// * [description]
/// * [wordIds]
/// * [sentenceList]
@BuiltValue()
abstract class CreatePersonLessonRequest
    implements
        Built<CreatePersonLessonRequest, CreatePersonLessonRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'is_public')
  bool get isPublic;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'word_ids')
  BuiltList<int>? get wordIds;

  @BuiltValueField(wireName: r'sentence_list')
  BuiltList<String>? get sentenceList;

  CreatePersonLessonRequest._();

  factory CreatePersonLessonRequest(
          [void updates(CreatePersonLessonRequestBuilder b)]) =
      _$CreatePersonLessonRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePersonLessonRequestBuilder b) => b
    ..wordIds = ListBuilder()
    ..sentenceList = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePersonLessonRequest> get serializer =>
      _$CreatePersonLessonRequestSerializer();
}

class _$CreatePersonLessonRequestSerializer
    implements PrimitiveSerializer<CreatePersonLessonRequest> {
  @override
  final Iterable<Type> types = const [
    CreatePersonLessonRequest,
    _$CreatePersonLessonRequest
  ];

  @override
  final String wireName = r'CreatePersonLessonRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePersonLessonRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'is_public';
    yield serializers.serialize(
      object.isPublic,
      specifiedType: const FullType(bool),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.wordIds != null) {
      yield r'word_ids';
      yield serializers.serialize(
        object.wordIds,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.sentenceList != null) {
      yield r'sentence_list';
      yield serializers.serialize(
        object.sentenceList,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePersonLessonRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePersonLessonRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'is_public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPublic = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'word_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.wordIds.replace(valueDes);
          break;
        case r'sentence_list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.sentenceList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePersonLessonRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePersonLessonRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
