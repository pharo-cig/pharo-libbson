Class {
	#name : 'BsonSubtypeT',
	#superclass : 'BSONEnumeration',
	#classVars : [
		'BSON_SUBTYPE_BINARY',
		'BSON_SUBTYPE_BINARY_DEPRECATED',
		'BSON_SUBTYPE_COLUMN',
		'BSON_SUBTYPE_ENCRYPTED',
		'BSON_SUBTYPE_FUNCTION',
		'BSON_SUBTYPE_MD5',
		'BSON_SUBTYPE_SENSITIVE',
		'BSON_SUBTYPE_USER',
		'BSON_SUBTYPE_UUID',
		'BSON_SUBTYPE_UUID_DEPRECATED'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_BINARY [
	"This method was automatically generated"
	^ BSON_SUBTYPE_BINARY
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_BINARY_DEPRECATED [
	"This method was automatically generated"
	^ BSON_SUBTYPE_BINARY_DEPRECATED
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_COLUMN [
	"This method was automatically generated"
	^ BSON_SUBTYPE_COLUMN
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_ENCRYPTED [
	"This method was automatically generated"
	^ BSON_SUBTYPE_ENCRYPTED
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_FUNCTION [
	"This method was automatically generated"
	^ BSON_SUBTYPE_FUNCTION
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_MD5 [
	"This method was automatically generated"
	^ BSON_SUBTYPE_MD5
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_SENSITIVE [
	"This method was automatically generated"
	^ BSON_SUBTYPE_SENSITIVE
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_USER [
	"This method was automatically generated"
	^ BSON_SUBTYPE_USER
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_UUID [
	"This method was automatically generated"
	^ BSON_SUBTYPE_UUID
]

{ #category : 'accessing enum' }
BsonSubtypeT class >> BSON_SUBTYPE_UUID_DEPRECATED [
	"This method was automatically generated"
	^ BSON_SUBTYPE_UUID_DEPRECATED
]

{ #category : 'enum declaration' }
BsonSubtypeT class >> enumDecl [

	^ #(
	BSON_SUBTYPE_BINARY 0
	BSON_SUBTYPE_FUNCTION 1
	BSON_SUBTYPE_BINARY_DEPRECATED 2
	BSON_SUBTYPE_UUID_DEPRECATED 3
	BSON_SUBTYPE_UUID 4
	BSON_SUBTYPE_MD5 5
	BSON_SUBTYPE_ENCRYPTED 6
	BSON_SUBTYPE_COLUMN 7
	BSON_SUBTYPE_SENSITIVE 8
	BSON_SUBTYPE_USER 128 )
]
