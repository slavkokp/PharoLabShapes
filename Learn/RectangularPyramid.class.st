Class {
	#name : #RectangularPyramid,
	#superclass : #ConeShape,
	#category : #Learn
}

{ #category : #initialization }
RectangularPyramid >> initialize [
 base := Rect new.
 height := 1.
]

{ #category : #calculations }
RectangularPyramid >> sideArea [ 
^ (((base width / 2) squared + height squared) sqrt * 0.5 * base height * 2) + 
(((base height / 2) squared + height squared) sqrt * 0.5 * base width * 2).
]
