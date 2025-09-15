Class {
	#name : 'BsonWriterT',
	#superclass : 'BSONBaseObject',
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'finalizing' }
BsonWriterT >> dispose [

	self ffiCall: #(void _bson_writer_t_dispose(_bson_writer_t* self))
]
