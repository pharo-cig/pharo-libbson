Class {
	#name : 'BsonMemVtableT',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_ALIGNED_ALLOC',
		'OFFSET_CALLOC',
		'OFFSET_FREE',
		'OFFSET_MALLOC',
		'OFFSET_PADDING',
		'OFFSET_REALLOC'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonMemVtableT class >> fieldsDesc [

	^ #(
	FFICallback malloc;
	FFICallback calloc;
	FFICallback realloc;
	FFICallback free;
	FFICallback aligned_alloc;
	void_pointer_3 padding
	)
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> aligned_alloc [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_ALIGNED_ALLOC) asInteger)
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> aligned_alloc: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_ALIGNED_ALLOC
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> calloc [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_CALLOC) asInteger)
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> calloc: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_CALLOC
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> free [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_FREE) asInteger)
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> free: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_FREE
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> malloc [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_MALLOC) asInteger)
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> malloc: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_MALLOC
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> padding [
	"This method was automatically generated"
	^(FFIArray ofType: 'void*' size: 3) fromHandle: (handle copyFrom: OFFSET_PADDING to: OFFSET_PADDING + 23)
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> padding: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PADDING to: OFFSET_PADDING + 23 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> realloc [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_REALLOC) asInteger)
]

{ #category : 'accessing - structure variables' }
BsonMemVtableT >> realloc: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_REALLOC
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]
