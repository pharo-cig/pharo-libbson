Class {
	#name : 'BsonJsonReaderT',
	#superclass : 'BSONBaseObject',
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'finalizing' }
BsonJsonReaderT >> dispose [

	self ffiCall: #(void _bson_json_reader_t_dispose(_bson_json_reader_t* self))
]
