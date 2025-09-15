Class {
	#name : 'BSONBconExtractCtxFrame',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_I',
		'OFFSET_IS_ARRAY',
		'OFFSET_ITER'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BSONBconExtractCtxFrame class >> fieldsDesc [

	^ #(
	int i;
	int is_array;
	bson_iter_t iter
	)
]

{ #category : 'accessing - structure variables' }
BSONBconExtractCtxFrame >> i [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_I
]

{ #category : 'accessing - structure variables' }
BSONBconExtractCtxFrame >> i: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_I put: anObject
]

{ #category : 'accessing - structure variables' }
BSONBconExtractCtxFrame >> is_array [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_IS_ARRAY
]

{ #category : 'accessing - structure variables' }
BSONBconExtractCtxFrame >> is_array: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_IS_ARRAY put: anObject
]

{ #category : 'accessing - structure variables' }
BSONBconExtractCtxFrame >> iter [
	"This method was automatically generated"
	^ BSONStruct7 fromHandle: (handle referenceStructAt: OFFSET_ITER length: BSONStruct7 byteSize)
]

{ #category : 'accessing - structure variables' }
BSONBconExtractCtxFrame >> iter: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_ITER put: anObject getHandle length: BSONStruct7 byteSize
]
