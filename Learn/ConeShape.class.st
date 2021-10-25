Class {
	#name : #ConeShape,
	#superclass : #VolumeShape,
	#category : #Learn
}

{ #category : #calculations }
ConeShape >> totalArea [ 
^self baseArea + self sideArea 
]

{ #category : #calculations }
ConeShape >> volume [ 
^self baseArea * height  / 3.0 
]
