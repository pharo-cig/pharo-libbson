Class {
	#name : 'BsonStringT',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_ALLOC',
		'OFFSET_LEN',
		'OFFSET_STR'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonStringT class >> fieldsDesc [

	^ #(
	char* str;
	uint32_t len;
	uint32_t alloc
	)
]

{ #category : 'accessing - structure variables' }
BsonStringT >> alloc [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ALLOC
]

{ #category : 'accessing - structure variables' }
BsonStringT >> alloc: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ALLOC put: anObject
]

{ #category : 'accessing - structure variables' }
BsonStringT >> len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_LEN
]

{ #category : 'accessing - structure variables' }
BsonStringT >> len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LEN put: anObject
]

{ #category : 'accessing - structure variables' }
BsonStringT >> str [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_STR) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
BsonStringT >> str: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_STR put: anObject getHandle.
]
