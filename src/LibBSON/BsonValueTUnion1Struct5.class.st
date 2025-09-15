Class {
	#name : 'BsonValueTUnion1Struct5',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_OPTIONS',
		'OFFSET_REGEX'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1Struct5 class >> fieldsDesc [

	^ #(
	char* regex;
	char* options
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct5 >> options [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_OPTIONS) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct5 >> options: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_OPTIONS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct5 >> regex [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_REGEX) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct5 >> regex: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_REGEX put: anObject getHandle.
]
