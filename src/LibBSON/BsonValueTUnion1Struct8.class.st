Class {
	#name : 'BsonValueTUnion1Struct8',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_CODE',
		'OFFSET_CODE_LEN',
		'OFFSET_SCOPE_DATA',
		'OFFSET_SCOPE_LEN'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1Struct8 class >> fieldsDesc [

	^ #(
	char* code;
	uint8_t* scope_data;
	uint32_t code_len;
	uint32_t scope_len
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct8 >> code [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_CODE) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct8 >> code: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CODE put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct8 >> code_len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CODE_LEN
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct8 >> code_len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CODE_LEN put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct8 >> scope_data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_SCOPE_DATA) type: ExternalType byte asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct8 >> scope_data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_SCOPE_DATA put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct8 >> scope_len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SCOPE_LEN
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct8 >> scope_len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SCOPE_LEN put: anObject
]
