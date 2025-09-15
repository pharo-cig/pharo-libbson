Class {
	#name : 'BsonValueTUnion1Struct9',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_LEN',
		'OFFSET_SYMBOL'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1Struct9 class >> fieldsDesc [

	^ #(
	char* symbol;
	uint32_t len
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct9 >> len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_LEN
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct9 >> len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LEN put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct9 >> symbol [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_SYMBOL) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct9 >> symbol: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_SYMBOL put: anObject getHandle.
]
