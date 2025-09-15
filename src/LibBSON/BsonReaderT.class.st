Class {
	#name : 'BsonReaderT',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_TYPE'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonReaderT class >> fieldsDesc [

	^ #(
	uint32_t type
	)
]

{ #category : 'accessing - structure variables' }
BsonReaderT >> type [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_TYPE
]

{ #category : 'accessing - structure variables' }
BsonReaderT >> type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TYPE put: anObject
]
