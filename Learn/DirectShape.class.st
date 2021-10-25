Class {
	#name : #DirectShape,
	#superclass : #VolumeShape,
	#category : #Learn
}

{ #category : #calculations }
DirectShape >> sideArea [ 
^base perimeter * height 
]

{ #category : #calculations }
DirectShape >> totalArea [ 
^self baseArea * 2 + self sideArea 
]

{ #category : #calculations }
DirectShape >> volume [ 
^self baseArea * height  
]
