Class {
	#name : 'BsonErrorT',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_CODE',
		'OFFSET_DOMAIN',
		'OFFSET_MESSAGE'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonErrorT class >> fieldsDesc [

	^ #(
	uint32_t domain;
	uint32_t code;
	char_504 message
	)
]

{ #category : 'accessing - structure variables' }
BsonErrorT >> code [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CODE
]

{ #category : 'accessing - structure variables' }
BsonErrorT >> code: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CODE put: anObject
]

{ #category : 'accessing - structure variables' }
BsonErrorT >> domain [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_DOMAIN
]

{ #category : 'accessing - structure variables' }
BsonErrorT >> domain: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_DOMAIN put: anObject
]

{ #category : 'accessing - structure variables' }
BsonErrorT >> message [
	"This method was automatically generated"
	^(FFIArray ofType: #FFICharacterType size: 504) fromHandle: (handle copyFrom: OFFSET_MESSAGE to: OFFSET_MESSAGE + 503)
]

{ #category : 'accessing - structure variables' }
BsonErrorT >> message: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_MESSAGE to: OFFSET_MESSAGE + 503 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing' }
BsonErrorT >> messageString [
	"since message is a char[504]..."

	^ self message getHandle asString
]
