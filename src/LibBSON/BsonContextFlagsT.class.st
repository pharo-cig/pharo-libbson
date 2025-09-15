Class {
	#name : 'BsonContextFlagsT',
	#superclass : 'BSONEnumeration',
	#classVars : [
		'BSON_CONTEXT_DISABLE_HOST_CACHE',
		'BSON_CONTEXT_DISABLE_PID_CACHE',
		'BSON_CONTEXT_NONE',
		'BSON_CONTEXT_THREAD_SAFE',
		'BSON_CONTEXT_USE_TASK_ID'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'accessing enum' }
BsonContextFlagsT class >> BSON_CONTEXT_DISABLE_HOST_CACHE [
	"This method was automatically generated"
	^ BSON_CONTEXT_DISABLE_HOST_CACHE
]

{ #category : 'accessing enum' }
BsonContextFlagsT class >> BSON_CONTEXT_DISABLE_PID_CACHE [
	"This method was automatically generated"
	^ BSON_CONTEXT_DISABLE_PID_CACHE
]

{ #category : 'accessing enum' }
BsonContextFlagsT class >> BSON_CONTEXT_NONE [
	"This method was automatically generated"
	^ BSON_CONTEXT_NONE
]

{ #category : 'accessing enum' }
BsonContextFlagsT class >> BSON_CONTEXT_THREAD_SAFE [
	"This method was automatically generated"
	^ BSON_CONTEXT_THREAD_SAFE
]

{ #category : 'accessing enum' }
BsonContextFlagsT class >> BSON_CONTEXT_USE_TASK_ID [
	"This method was automatically generated"
	^ BSON_CONTEXT_USE_TASK_ID
]

{ #category : 'enum declaration' }
BsonContextFlagsT class >> enumDecl [

	^ #(
	BSON_CONTEXT_NONE 0
	BSON_CONTEXT_THREAD_SAFE 1
	BSON_CONTEXT_DISABLE_HOST_CACHE 2
	BSON_CONTEXT_DISABLE_PID_CACHE 4
	BSON_CONTEXT_USE_TASK_ID 8 )
]
