Class {
	#name : 'BsonValueTUnion1Struct1',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_INCREMENT',
		'OFFSET_TIMESTAMP'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1Struct1 class >> fieldsDesc [

	^ #(
	uint32_t timestamp;
	uint32_t increment
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct1 >> increment [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_INCREMENT
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct1 >> increment: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_INCREMENT put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct1 >> timestamp [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_TIMESTAMP
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct1 >> timestamp: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TIMESTAMP put: anObject
]
