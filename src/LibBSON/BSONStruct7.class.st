Class {
	#name : 'BSONStruct7',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_D1',
		'OFFSET_D2',
		'OFFSET_D3',
		'OFFSET_D4',
		'OFFSET_ERR_OFF',
		'OFFSET_KEY',
		'OFFSET_LEN',
		'OFFSET_NEXT_OFF',
		'OFFSET_OFF',
		'OFFSET_RAW',
		'OFFSET_TYPE',
		'OFFSET_VALUE'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BSONStruct7 class >> fieldsDesc [

	^ #(
	uint8_t* raw;
	uint32_t len;
	uint32_t off;
	uint32_t type;
	uint32_t key;
	uint32_t d1;
	uint32_t d2;
	uint32_t d3;
	uint32_t d4;
	uint32_t next_off;
	uint32_t err_off;
	bson_value_t value
	)
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> d1 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_D1
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> d1: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_D1 put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> d2 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_D2
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> d2: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_D2 put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> d3 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_D3
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> d3: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_D3 put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> d4 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_D4
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> d4: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_D4 put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> err_off [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ERR_OFF
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> err_off: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ERR_OFF put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> key [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_KEY
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> key: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_KEY put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_LEN
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LEN put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> next_off [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_NEXT_OFF
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> next_off: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_NEXT_OFF put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> off [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_OFF
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> off: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_OFF put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> raw [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_RAW) type: ExternalType byte asPointerType
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> raw: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RAW put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> type [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_TYPE
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TYPE put: anObject
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> value [
	"This method was automatically generated"
	^ BsonValueT fromHandle: (handle referenceStructAt: OFFSET_VALUE length: BsonValueT byteSize)
]

{ #category : 'accessing - structure variables' }
BSONStruct7 >> value: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_VALUE put: anObject getHandle length: BsonValueT byteSize
]
