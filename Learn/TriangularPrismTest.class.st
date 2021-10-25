Class {
	#name : #TriangularPrismTest,
	#superclass : #TestCase,
	#category : #Learn
}

{ #category : #tests }
TriangularPrismTest >> testInitialization [
	self assert: TriangularPrism   new height  equals:1. 
	self assert: ((TriangularPrism  new base) class) equals: Triangle   .
]

{ #category : #tests }
TriangularPrismTest >> testSideArea [ 
	|a b c|
c:= Triangle   newA: 3 andB: 4  andC: 5.
a:= TriangularPrism  new.
b:= TriangularPrism newHeight: 5 andBase: c.

self  assert: ((a sideArea ) round: 4 ) equals: 3.0.
self  assert: ((b sideArea ) round: 4 ) equals: 60.0.

]

{ #category : #tests }
TriangularPrismTest >> testTotalArea [
	|a b c|
c:= Triangle   newA: 3 andB: 4  andC: 5.
a:= TriangularPrism  new.
b:= TriangularPrism newHeight: 5 andBase: c.

self  assert: ((a totalArea  ) round: 4 ) equals: 3.8660.0.
self  assert: ((b totalArea  ) round: 4 ) equals: 72.0.
]

{ #category : #tests }
TriangularPrismTest >> testVolume [
	|a b c|
c:= Triangle   newA: 3 andB: 4  andC: 5.
a:= TriangularPrism  new.
b:= TriangularPrism newHeight: 5 andBase: c.

self  assert: ((a volume  ) round: 4 ) equals: 0.4330.
self  assert: ((b volume  ) round: 4 ) equals: 30.0.
]
