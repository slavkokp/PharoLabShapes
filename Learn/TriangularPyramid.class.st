Class {
	#name : #TriangularPyramid,
	#superclass : #ConeShape,
	#category : #Learn
}

{ #category : #initialization }
TriangularPyramid >> initialize [
 base := Triangle new.
 height := 1.
]

{ #category : #calculations }
TriangularPyramid >> sideArea [ 
|p r|
p := base perimeter / 2.
r := ((p - base a) * (p - base b) * (p - base c) / p) sqrt.
^ 0.5 * (r squared + height squared) sqrt * (base a + base b + base c).
]
