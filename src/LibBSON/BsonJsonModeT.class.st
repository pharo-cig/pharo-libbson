Class {
	#name : 'BsonJsonModeT',
	#superclass : 'BSONEnumeration',
	#classVars : [
		'BSON_JSON_MODE_CANONICAL',
		'BSON_JSON_MODE_LEGACY',
		'BSON_JSON_MODE_RELAXED'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
BsonJsonModeT class >> BSON_JSON_MODE_CANONICAL [
	"This method was automatically generated"
	^ BSON_JSON_MODE_CANONICAL
]

{ #category : 'accessing enum' }
BsonJsonModeT class >> BSON_JSON_MODE_LEGACY [
	"This method was automatically generated"
	^ BSON_JSON_MODE_LEGACY
]

{ #category : 'accessing enum' }
BsonJsonModeT class >> BSON_JSON_MODE_RELAXED [
	"This method was automatically generated"
	^ BSON_JSON_MODE_RELAXED
]

{ #category : 'enum declaration' }
BsonJsonModeT class >> enumDecl [

	^ #(
	BSON_JSON_MODE_LEGACY 0
	BSON_JSON_MODE_CANONICAL 1
	BSON_JSON_MODE_RELAXED 2 )
]
