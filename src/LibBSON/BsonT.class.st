Class {
	#name : 'BsonT',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_FLAGS',
		'OFFSET_LEN',
		'OFFSET_PADDING'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonT class >> fieldsDesc [

	^ #(
	uint32_t flags;
	uint32_t len;
	uint8_t_120 padding
	)
]

{ #category : 'accessing - structure variables' }
BsonT >> flags [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FLAGS
]

{ #category : 'accessing - structure variables' }
BsonT >> flags: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FLAGS put: anObject
]

{ #category : 'accessing - structure variables' }
BsonT >> len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_LEN
]

{ #category : 'accessing - structure variables' }
BsonT >> len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LEN put: anObject
]

{ #category : 'accessing - structure variables' }
BsonT >> padding [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIUInt8 size: 120) fromHandle: (handle copyFrom: OFFSET_PADDING to: OFFSET_PADDING + 119)
]

{ #category : 'accessing - structure variables' }
BsonT >> padding: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PADDING to: OFFSET_PADDING + 119 with: anObject getHandle startingAt: 1
]
