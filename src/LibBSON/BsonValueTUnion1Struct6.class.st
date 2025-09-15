Class {
	#name : 'BsonValueTUnion1Struct6',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_COLLECTION',
		'OFFSET_COLLECTION_LEN',
		'OFFSET_OID'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueTUnion1Struct6 class >> fieldsDesc [

	^ #(
	char* collection;
	uint32_t collection_len;
	bson_oid_t oid
	)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct6 >> collection [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_COLLECTION) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct6 >> collection: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_COLLECTION put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct6 >> collection_len [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_COLLECTION_LEN
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct6 >> collection_len: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_COLLECTION_LEN put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct6 >> oid [
	"This method was automatically generated"
	^ BsonOidT fromHandle: (handle referenceStructAt: OFFSET_OID length: BsonOidT byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueTUnion1Struct6 >> oid: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OID put: anObject getHandle length: BsonOidT byteSize
]
