Class {
	#name : 'BsonJsonErrorCodeT',
	#superclass : 'BSONEnumeration',
	#classVars : [
		'BSON_JSON_ERROR_READ_CB_FAILURE',
		'BSON_JSON_ERROR_READ_CORRUPT_JS',
		'BSON_JSON_ERROR_READ_INVALID_PARAM'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
BsonJsonErrorCodeT class >> BSON_JSON_ERROR_READ_CB_FAILURE [
	"This method was automatically generated"
	^ BSON_JSON_ERROR_READ_CB_FAILURE
]

{ #category : 'accessing enum' }
BsonJsonErrorCodeT class >> BSON_JSON_ERROR_READ_CORRUPT_JS [
	"This method was automatically generated"
	^ BSON_JSON_ERROR_READ_CORRUPT_JS
]

{ #category : 'accessing enum' }
BsonJsonErrorCodeT class >> BSON_JSON_ERROR_READ_INVALID_PARAM [
	"This method was automatically generated"
	^ BSON_JSON_ERROR_READ_INVALID_PARAM
]

{ #category : 'enum declaration' }
BsonJsonErrorCodeT class >> enumDecl [

	^ #(
	BSON_JSON_ERROR_READ_CORRUPT_JS 1
	BSON_JSON_ERROR_READ_INVALID_PARAM 2
	BSON_JSON_ERROR_READ_CB_FAILURE 3 )
]
