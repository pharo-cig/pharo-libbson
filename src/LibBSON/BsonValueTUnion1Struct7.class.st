Class {
	#name : 'BsonValueTUnion1Struct7',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_CODE',
		'OFFSET_CODE_LEN'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1Struct7 class >> fieldsDesc [

	^ #(
	char* code;
	uint32_t code_len
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct7 >> code [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_CODE) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct7 >> code: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CODE put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct7 >> code_len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CODE_LEN
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct7 >> code_len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CODE_LEN put: anObject
]
