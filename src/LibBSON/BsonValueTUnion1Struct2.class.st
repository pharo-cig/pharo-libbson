Class {
	#name : 'BsonValueTUnion1Struct2',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_LEN',
		'OFFSET_STR'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1Struct2 class >> fieldsDesc [

	^ #(
	char* str;
	uint32_t len
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct2 >> len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_LEN
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct2 >> len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LEN put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct2 >> str [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_STR) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct2 >> str: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_STR put: anObject getHandle.
]
