Class {
	#name : 'BSONBconAppendCtxT',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_N',
		'OFFSET_STACK'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BSONBconAppendCtxT class >> fieldsDesc [

	^ #(
	bcon_append_ctx_frame_t_100 stack;
	int n
	)
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxT >> n [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_N
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxT >> n: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_N put: anObject
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxT >> stack [
	"This method was automatically generated"
	^(FFIArray ofType: #FFIExternalStructureType size: 100) fromHandle: (handle copyFrom: OFFSET_STACK to: OFFSET_STACK + 13599)
]

{ #category : 'accessing - structure variables' }
BSONBconAppendCtxT >> stack: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_STACK to: OFFSET_STACK + 13599 with: anObject getHandle startingAt: 1
]
