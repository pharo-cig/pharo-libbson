Class {
	#name : 'BsonValidateFlagsT',
	#superclass : 'BSONEnumeration',
	#classVars : [
		'BSON_VALIDATE_CORRUPT',
		'BSON_VALIDATE_DOLLAR_KEYS',
		'BSON_VALIDATE_DOT_KEYS',
		'BSON_VALIDATE_EMPTY_KEYS',
		'BSON_VALIDATE_NONE',
		'BSON_VALIDATE_UTF8',
		'BSON_VALIDATE_UTF8_ALLOW_NULL'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
BsonValidateFlagsT class >> BSON_VALIDATE_CORRUPT [
	"This method was automatically generated"
	^ BSON_VALIDATE_CORRUPT
]

{ #category : 'accessing enum' }
BsonValidateFlagsT class >> BSON_VALIDATE_DOLLAR_KEYS [
	"This method was automatically generated"
	^ BSON_VALIDATE_DOLLAR_KEYS
]

{ #category : 'accessing enum' }
BsonValidateFlagsT class >> BSON_VALIDATE_DOT_KEYS [
	"This method was automatically generated"
	^ BSON_VALIDATE_DOT_KEYS
]

{ #category : 'accessing enum' }
BsonValidateFlagsT class >> BSON_VALIDATE_EMPTY_KEYS [
	"This method was automatically generated"
	^ BSON_VALIDATE_EMPTY_KEYS
]

{ #category : 'accessing enum' }
BsonValidateFlagsT class >> BSON_VALIDATE_NONE [
	"This method was automatically generated"
	^ BSON_VALIDATE_NONE
]

{ #category : 'accessing enum' }
BsonValidateFlagsT class >> BSON_VALIDATE_UTF8 [
	"This method was automatically generated"
	^ BSON_VALIDATE_UTF8
]

{ #category : 'accessing enum' }
BsonValidateFlagsT class >> BSON_VALIDATE_UTF8_ALLOW_NULL [
	"This method was automatically generated"
	^ BSON_VALIDATE_UTF8_ALLOW_NULL
]

{ #category : 'enum declaration' }
BsonValidateFlagsT class >> enumDecl [

	^ #(
	BSON_VALIDATE_NONE 0
	BSON_VALIDATE_UTF8 1
	BSON_VALIDATE_DOLLAR_KEYS 2
	BSON_VALIDATE_DOT_KEYS 4
	BSON_VALIDATE_UTF8_ALLOW_NULL 8
	BSON_VALIDATE_EMPTY_KEYS 16
	BSON_VALIDATE_CORRUPT 32 )
]
