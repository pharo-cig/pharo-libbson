Class {
	#name : 'BsonArrayBuilderT',
	#superclass : 'BSONBaseObject',
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'finalizing' }
BsonArrayBuilderT >> dispose [

	self ffiCall: #(void _bson_array_builder_t_dispose(_bson_array_builder_t* self))
]
