Class {
	#name : #Conus,
	#superclass : #ConeShape,
	#category : #Learn
}

{ #category : #initialization }
Conus >> initialize [ 
height := 1.
base := Circle new.
]

{ #category : #calculations }
Conus >> sideArea [ 
"Sb = Pi * r * L.   L = sqrt ( r^2 + h^2 ) "

^Float pi * base radius * (base radius squared + height  squared) sqrt
]
