Class {
	#name : 'BsonValueTUnion1Struct3',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_DATA_LEN'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1Struct3 class >> fieldsDesc [

	^ #(
	uint8_t* data;
	uint32_t data_len
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct3 >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType byte asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct3 >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct3 >> data_len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_DATA_LEN
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct3 >> data_len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_DATA_LEN put: anObject
]
