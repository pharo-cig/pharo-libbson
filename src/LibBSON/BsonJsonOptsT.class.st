Class {
	#name : 'BsonJsonOptsT',
	#superclass : 'BSONBaseObject',
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'finalizing' }
BsonJsonOptsT >> dispose [

	self ffiCall: #(void _bson_json_opts_t_dispose(_bson_json_opts_t* self))
]
