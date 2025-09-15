Class {
	#name : 'BSONUnion1',
	#superclass : 'BSONBaseObject',
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'finalizing' }
BSONUnion1 >> dispose [

	self ffiCall: #(void union1_dispose(union1* self))
]
