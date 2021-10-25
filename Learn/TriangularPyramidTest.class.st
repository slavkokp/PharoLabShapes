Class {
	#name : #TriangularPyramidTest,
	#superclass : #TestCase,
	#category : #Learn
}

{ #category : #tests }
TriangularPyramidTest >> testInitialization [
	self assert: TriangularPyramid   new height  equals:1. 
	self assert: ((TriangularPyramid new base) class) equals: Triangle .
]

{ #category : #tests }
TriangularPyramidTest >> testSideArea [
	|a b c|
c:= Triangle newA: 3 andB: 4  andC: 5.
a:= TriangularPyramid    new.
b:= TriangularPyramid newHeight: 3 andBase: c.  

self  assert: ((a sideArea ) round: 4 ) equals: 1.5612.
self  assert: ((b sideArea ) round: 4 ) equals: 18.9737.
]

{ #category : #tests }
TriangularPyramidTest >> testTotalArea [
	|a b c|
c:= Triangle newA: 3 andB: 4  andC: 5.
a:= TriangularPyramid    new.
b:= TriangularPyramid newHeight: 3 andBase: c.  

self  assert: ((a totalArea  ) round: 4 ) equals: 1.9943.
self  assert: ((b totalArea ) round: 4 ) equals: 24.9737.
]

{ #category : #tests }
TriangularPyramidTest >> testVolume [
	|a b c|
c:= Triangle newA: 3 andB: 4  andC: 5.
a:= TriangularPyramid    new.
b:= TriangularPyramid newHeight: 3 andBase: c.

self  assert: ((a volume  ) round: 4 ) equals: 0.1443.
self  assert: ((b volume ) round: 4 ) equals: 6.0.
]
