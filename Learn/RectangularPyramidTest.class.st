Class {
	#name : #RectangularPyramidTest,
	#superclass : #TestCase,
	#category : #Learn
}

{ #category : #tests }
RectangularPyramidTest >> testInitialization [
	self assert: RectangularPyramid  new height  equals:1. 
	self assert: ((RectangularPyramid new base) class) equals: Rect.
]

{ #category : #tests }
RectangularPyramidTest >> testSideArea [
	|a b c|
c:= Rect newWidth: 4 andHeight: 4.
a:= RectangularPyramid   new.
b:= RectangularPyramid newHeight: 3 andBase: c.  

self  assert: ((a sideArea ) round: 4 ) equals: 3.6503.
self  assert: ((b sideArea ) round: 4 ) equals: 28.8444.

]

{ #category : #tests }
RectangularPyramidTest >> testTotalArea [
	|a b c|
c:= Rect newWidth: 4 andHeight: 4.
a:= RectangularPyramid   new.
b:= RectangularPyramid newHeight: 3 andBase: c.  

self  assert: ((a totalArea  ) round: 4 ) equals: 5.6503.
self  assert: ((b totalArea  ) round: 4 ) equals: 44.8444.
]

{ #category : #tests }
RectangularPyramidTest >> testVolume [
		|a b c|
c:= Rect newWidth: 4 andHeight: 4.
a:= RectangularPyramid   new.
b:= RectangularPyramid newHeight: 3 andBase: c. 

self  assert: ((a volume  ) round: 4 ) equals: 0.6667.
self  assert: ((b volume  ) round: 4 ) equals: 16.0.

]
