Class {
	#name : 'BaselineOfLibBSON',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfLibBSON',
	#package : 'BaselineOfLibBSON'
}

{ #category : 'baselines' }
BaselineOfLibBSON >> baseline: spec [
	<baseline>
	
	spec for: #common do: [
		spec package: 'LibBSON' ]
]
