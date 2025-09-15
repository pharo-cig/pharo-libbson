Class {
	#name : 'BSONBaseObject',
	#superclass : 'FFIOpaqueObject',
	#traits : 'LibTBson',
	#classTraits : 'LibTBson classTrait',
	#pools : [
		'BSONConstants',
		'BSONTypedef'
	],
	#category : 'LibBSON-Base',
	#package : 'LibBSON',
	#tag : 'Base'
}

{ #category : 'finalization' }
BSONBaseObject >> autoRelease [
	
	FinalizationRegistry default add: self
]

{ #category : 'finalization' }
BSONBaseObject >> dispose [
	
	self subclassResponsibility
]

{ #category : 'finalization' }
BSONBaseObject >> finalize [
	
	self dispose.
	handle beNull
]

{ #category : 'initialization' }
BSONBaseObject >> initialize [
	"do nothing (prevent initialize to set the handle)"
]
