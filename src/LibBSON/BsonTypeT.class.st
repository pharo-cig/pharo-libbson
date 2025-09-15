Class {
	#name : 'BsonTypeT',
	#superclass : 'BSONEnumeration',
	#classVars : [
		'BSON_TYPE_ARRAY',
		'BSON_TYPE_BINARY',
		'BSON_TYPE_BOOL',
		'BSON_TYPE_CODE',
		'BSON_TYPE_CODEWSCOPE',
		'BSON_TYPE_DATE_TIME',
		'BSON_TYPE_DBPOINTER',
		'BSON_TYPE_DECIMAL128',
		'BSON_TYPE_DOCUMENT',
		'BSON_TYPE_DOUBLE',
		'BSON_TYPE_EOD',
		'BSON_TYPE_INT32',
		'BSON_TYPE_INT64',
		'BSON_TYPE_MAXKEY',
		'BSON_TYPE_MINKEY',
		'BSON_TYPE_NULL',
		'BSON_TYPE_OID',
		'BSON_TYPE_REGEX',
		'BSON_TYPE_SYMBOL',
		'BSON_TYPE_TIMESTAMP',
		'BSON_TYPE_UNDEFINED',
		'BSON_TYPE_UTF8'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_ARRAY [
	"This method was automatically generated"
	^ BSON_TYPE_ARRAY
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_BINARY [
	"This method was automatically generated"
	^ BSON_TYPE_BINARY
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_BOOL [
	"This method was automatically generated"
	^ BSON_TYPE_BOOL
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_CODE [
	"This method was automatically generated"
	^ BSON_TYPE_CODE
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_CODEWSCOPE [
	"This method was automatically generated"
	^ BSON_TYPE_CODEWSCOPE
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_DATE_TIME [
	"This method was automatically generated"
	^ BSON_TYPE_DATE_TIME
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_DBPOINTER [
	"This method was automatically generated"
	^ BSON_TYPE_DBPOINTER
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_DECIMAL128 [
	"This method was automatically generated"
	^ BSON_TYPE_DECIMAL128
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_DOCUMENT [
	"This method was automatically generated"
	^ BSON_TYPE_DOCUMENT
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_DOUBLE [
	"This method was automatically generated"
	^ BSON_TYPE_DOUBLE
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_EOD [
	"This method was automatically generated"
	^ BSON_TYPE_EOD
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_INT32 [
	"This method was automatically generated"
	^ BSON_TYPE_INT32
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_INT64 [
	"This method was automatically generated"
	^ BSON_TYPE_INT64
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_MAXKEY [
	"This method was automatically generated"
	^ BSON_TYPE_MAXKEY
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_MINKEY [
	"This method was automatically generated"
	^ BSON_TYPE_MINKEY
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_NULL [
	"This method was automatically generated"
	^ BSON_TYPE_NULL
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_OID [
	"This method was automatically generated"
	^ BSON_TYPE_OID
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_REGEX [
	"This method was automatically generated"
	^ BSON_TYPE_REGEX
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_SYMBOL [
	"This method was automatically generated"
	^ BSON_TYPE_SYMBOL
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_TIMESTAMP [
	"This method was automatically generated"
	^ BSON_TYPE_TIMESTAMP
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_UNDEFINED [
	"This method was automatically generated"
	^ BSON_TYPE_UNDEFINED
]

{ #category : 'accessing enum' }
BsonTypeT class >> BSON_TYPE_UTF8 [
	"This method was automatically generated"
	^ BSON_TYPE_UTF8
]

{ #category : 'enum declaration' }
BsonTypeT class >> enumDecl [

	^ #(
	BSON_TYPE_EOD 0
	BSON_TYPE_DOUBLE 1
	BSON_TYPE_UTF8 2
	BSON_TYPE_DOCUMENT 3
	BSON_TYPE_ARRAY 4
	BSON_TYPE_BINARY 5
	BSON_TYPE_UNDEFINED 6
	BSON_TYPE_OID 7
	BSON_TYPE_BOOL 8
	BSON_TYPE_DATE_TIME 9
	BSON_TYPE_NULL 10
	BSON_TYPE_REGEX 11
	BSON_TYPE_DBPOINTER 12
	BSON_TYPE_CODE 13
	BSON_TYPE_SYMBOL 14
	BSON_TYPE_CODEWSCOPE 15
	BSON_TYPE_INT32 16
	BSON_TYPE_TIMESTAMP 17
	BSON_TYPE_INT64 18
	BSON_TYPE_DECIMAL128 19
	BSON_TYPE_MAXKEY 127
	BSON_TYPE_MINKEY 255 )
]
