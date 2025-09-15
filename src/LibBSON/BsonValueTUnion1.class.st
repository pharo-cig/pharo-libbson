Class {
	#name : 'BsonValueTUnion1',
	#superclass : 'BSONUnion',
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1 class >> fieldsDesc [

	^ #(
	bson_oid_t v_oid;
	int64_t v_int64;
	int32_t v_int32;
	int8_t v_int8;
	double v_double;
	int v_bool;
	int64_t v_datetime;
	_bson_value_t_union1_struct1 v_timestamp;
	_bson_value_t_union1_struct2 v_utf8;
	_bson_value_t_union1_struct3 v_doc;
	_bson_value_t_union1_struct4 v_binary;
	_bson_value_t_union1_struct5 v_regex;
	_bson_value_t_union1_struct6 v_dbpointer;
	_bson_value_t_union1_struct7 v_code;
	_bson_value_t_union1_struct8 v_codewscope;
	_bson_value_t_union1_struct9 v_symbol;
	bson_decimal128_t v_decimal128
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_binary [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct4 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct4 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_binary: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_bool [
	"This method was automatically generated"
	^handle signedLongAt: 1
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_bool: anObject [
	"This method was automatically generated"
	handle signedLongAt: 1 put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_code [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct7 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct7 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_code: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_codewscope [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct8 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct8 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_codewscope: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 24.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_datetime [
	"This method was automatically generated"
	^handle signedLongLongAt: 1
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_datetime: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: 1 put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_dbpointer [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct6 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct6 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_dbpointer: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 24.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_decimal128 [
	"This method was automatically generated"
	^ BsonDecimal128T fromHandle: (handle referenceStructAt: 1 length: BsonDecimal128T byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_decimal128: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_doc [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct3 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct3 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_doc: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_double [
	"This method was automatically generated"
	^handle doubleAt: 1
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_double: anObject [
	"This method was automatically generated"
	handle doubleAt: 1 put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_int32 [
	"This method was automatically generated"
	^handle signedLongAt: 1
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_int32: anObject [
	"This method was automatically generated"
	handle signedLongAt: 1 put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_int64 [
	"This method was automatically generated"
	^handle signedLongLongAt: 1
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_int64: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: 1 put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_int8 [
	"This method was automatically generated"
	^handle signedByteAt: 1
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_int8: anObject [
	"This method was automatically generated"
	handle signedByteAt: 1 put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_oid [
	"This method was automatically generated"
	^ BsonOidT fromHandle: (handle referenceStructAt: 1 length: BsonOidT byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_oid: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 12.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_regex [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct5 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct5 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_regex: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_symbol [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct9 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct9 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_symbol: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_timestamp [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct1 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct1 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_timestamp: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 8.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_utf8 [
	"This method was automatically generated"
	^ BsonValueTUnion1Struct2 fromHandle: (handle referenceStructAt: 1 length: BsonValueTUnion1Struct2 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1 >> v_utf8: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 16.
]
