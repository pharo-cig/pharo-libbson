Class {
	#name : 'BsonMd5T',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_ABCD',
		'OFFSET_BUF',
		'OFFSET_COUNT'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonMd5T class >> fieldsDesc [

	^ #(
	uint32_t_2 count;
	uint32_t_4 abcd;
	uint8_t_64 buf
	)
]

{ #category : 'accessing - structure variables' }
BsonMd5T >> abcd [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIUInt32 size: 4) fromHandle: (handle copyFrom: OFFSET_ABCD to: OFFSET_ABCD + 15)
]

{ #category : 'accessing - structure variables' }
BsonMd5T >> abcd: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_ABCD to: OFFSET_ABCD + 15 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
BsonMd5T >> buf [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIUInt8 size: 64) fromHandle: (handle copyFrom: OFFSET_BUF to: OFFSET_BUF + 63)
]

{ #category : 'accessing - structure variables' }
BsonMd5T >> buf: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_BUF to: OFFSET_BUF + 63 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
BsonMd5T >> count [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIUInt32 size: 2) fromHandle: (handle copyFrom: OFFSET_COUNT to: OFFSET_COUNT + 7)
]

{ #category : 'accessing - structure variables' }
BsonMd5T >> count: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_COUNT to: OFFSET_COUNT + 7 with: anObject getHandle startingAt: 1
]
