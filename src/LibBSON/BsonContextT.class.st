Class {
	#name : 'BsonContextT',
	#superclass : 'BSONBaseObject',
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'finalizing' }
BsonContextT >> dispose [

	self ffiCall: #(void _bson_context_t_dispose(_bson_context_t* self))
]
