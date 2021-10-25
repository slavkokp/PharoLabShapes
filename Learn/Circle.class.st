Class {
	#name : #Circle,
	#superclass : #FlatShape,
	#instVars : [
		'radius'
	],
	#category : #Learn
}

{ #category : #'instance creation' }
Circle class >> newRadius: aNumber [

| inst |
inst := super new.
inst radius: aNumber.
^inst
]

{ #category : #calculations }
Circle >> area [ 
^ self radius squared * Float pi 
]

{ #category : #initialization }
Circle >> initialize [ 
radius := 1
]

{ #category : #calculations }
Circle >> perimeter [  
^ self radius * 2 * Float pi  
]

{ #category : #printing }
Circle >> printOn: aStream [

	aStream nextPutAll: 'Circle['.
	self radius printOn: aStream.
	aStream nextPut: $]
]

{ #category : #accessing }
Circle >> radius [
	^ radius
]

{ #category : #accessing }
Circle >> radius: aNumber [
radius := aNumber
]
