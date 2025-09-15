Class {
	#name : 'BSONBconAppendCtxFrame',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_BSON',
		'OFFSET_I',
		'OFFSET_IS_ARRAY'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BSONBconAppendCtxFrame class >> fieldsDesc [

	^ #(
	int i;
	int is_array;
	bson_t bson
	)
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxFrame >> bson [
	"This method was automatically generated"
	^ BsonT fromHandle: (handle referenceStructAt: OFFSET_BSON length: BsonT byteSize)
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxFrame >> bson: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_BSON put: anObject getHandle length: BsonT byteSize
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxFrame >> i [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxFrame >> i: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I put: anObject
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxFrame >> is_array [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_IS_ARRAY
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxFrame >> is_array: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_IS_ARRAY put: anObject
]
