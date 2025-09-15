Class {
	#name : 'BsonDecimal128T',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_HIGH',
		'OFFSET_LOW'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonDecimal128T class >> fieldsDesc [

	^ #(
	uint64_t low;
	uint64_t high
	)
]

{ #category : 'accessing - structure variables' }
BsonDecimal128T >> high [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_HIGH
]

{ #category : 'accessing - structure variables' }
BsonDecimal128T >> high: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_HIGH put: anObject
]

{ #category : 'accessing - structure variables' }
BsonDecimal128T >> low [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_LOW
]

{ #category : 'accessing - structure variables' }
BsonDecimal128T >> low: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_LOW put: anObject
]
