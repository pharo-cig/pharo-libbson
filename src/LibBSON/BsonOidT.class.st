Class {
	#name : 'BsonOidT',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_BYTES'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonOidT class >> fieldsDesc [

	^ #(
	uint8_t_12 bytes
	)
]

{ #category : 'accessing - structure variables' }
BsonOidT >> bytes [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIUInt8 size: 12) fromHandle: (handle copyFrom: OFFSET_BYTES to: OFFSET_BYTES + 11)
]

{ #category : 'accessing - structure variables' }
BsonOidT >> bytes: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_BYTES to: OFFSET_BYTES + 11 with: anObject getHandle startingAt: 1
]
