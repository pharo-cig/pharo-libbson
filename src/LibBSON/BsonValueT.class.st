Class {
	#name : 'BsonValueT',
	#superclass : 'BSONStructure',
	#classVars : [
		'OFFSET_PADDING',
		'OFFSET_VALUE',
		'OFFSET_VALUE_TYPE'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'field definition' }
BsonValueT class >> fieldsDesc [

	^ #(
	bson_type_t value_type;
	int32_t padding;
	_bson_value_t_union1 value
	)
]

{ #category : 'accessing - structure variables' }
BsonValueT >> padding [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PADDING
]

{ #category : 'accessing - structure variables' }
BsonValueT >> padding: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PADDING put: anObject
]

{ #category : 'accessing - structure variables' }
BsonValueT >> value [
	"This method was automatically generated"
	^ BsonValueTUnion1 fromHandle: (handle referenceStructAt: OFFSET_VALUE length: BsonValueTUnion1 byteSize)
]

{ #category : 'accessing - structure variables' }
BsonValueT >> value: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_VALUE put: anObject getHandle length: BsonValueTUnion1 byteSize
]

{ #category : 'accessing - structure variables' }
BsonValueT >> value_type [
	"This method was automatically generated"
	^BsonTypeT fromInteger: (handle unsignedLongAt: OFFSET_VALUE_TYPE)
]

{ #category : 'accessing - structure variables' }
BsonValueT >> value_type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VALUE_TYPE put: anObject value
]
