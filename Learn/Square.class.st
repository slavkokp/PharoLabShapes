Class {
	#name : #Square,
	#superclass : #Rect,
	#category : #Learn
}

{ #category : #accessing }
Square >> height: aNumber [ 
^self
]

{ #category : #printing }
Square >> printOn: aStream [ 

aStream nextPutAll:  'Square['.
	self width printOn:aStream.
	aStream nextPut: $]
]

{ #category : #accessing }
Square >> width: aNumber [
   width := aNumber .
  height  := aNumber 
]
