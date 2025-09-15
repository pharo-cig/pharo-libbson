Class {
	#name : 'BSONStruct9',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_PADDING',
		'OFFSET_VISIT_CORRUPT',
		'OFFSET_VISIT_UNSUPPORTED_TYPE'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BSONStruct9 class >> fieldsDesc [

	^ #(
	FFICallback visit_corrupt;
	FFICallback visit_unsupported_type;
	void_pointer_7 padding
	)
]

{ #category : 'accessing - structure variables' }
BSONStruct9 >> padding [
	"This method was automatically generated"
	^(FFIArray ofType: 'void*' size: 7) fromHandle: (handle copyFrom: OFFSET_PADDING to: OFFSET_PADDING + 55)
]

{ #category : 'accessing - structure variables' }
BSONStruct9 >> padding: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PADDING to: OFFSET_PADDING + 55 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
BSONStruct9 >> visit_corrupt [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_VISIT_CORRUPT) asInteger)
]

{ #category : 'accessing - structure variables' }
BSONStruct9 >> visit_corrupt: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_VISIT_CORRUPT
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]

{ #category : 'accessing - structure variables' }
BSONStruct9 >> visit_unsupported_type [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_VISIT_UNSUPPORTED_TYPE) asInteger)
]

{ #category : 'accessing - structure variables' }
BSONStruct9 >> visit_unsupported_type: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_VISIT_UNSUPPORTED_TYPE
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])
]
