Class {
	#name : #Rect,
	#superclass : #FlatShape,
	#instVars : [
		'height',
		'width'
	],
	#category : #Learn
}

{ #category : #'as yet unclassified' }
Rect class >> minimalWidthOrHeight [ 
^ 0.01
]

{ #category : #'instance creation' }
Rect class >> newWidth: aNumber andHeight: bNumber [

| inst |
inst := super new.
inst width: aNumber .
inst height: bNumber .
^inst
]

{ #category : #calculations }
Rect >> area [
    ^ self width * self height
]

{ #category : #accessing }
Rect >> height [

	^ height
]

{ #category : #accessing }
Rect >> height: aNumber [

	height := aNumber max: self class minimalWidthOrHeight
]

{ #category : #initialization }
Rect >> initialize [ 

	"width  := 1.
	height := 1"
	self width: 1.
	self height: 2
]

{ #category : #calculations }
Rect >> perimeter [ 
  ^ (self width + self height) * 2
]

{ #category : #printing }
Rect >> printOn: aStream [

	aStream nextPutAll: 'Rectangle['.
	self  width printOn: aStream.
	aStream nextPut: $x.
	self height printOn: aStream.
	aStream nextPut: $]
]

{ #category : #accessing }
Rect >> width [

	^ width
]

{ #category : #accessing }
Rect >> width: aNumber [

	width := aNumber max: Rect minimalWidthOrHeight
]
