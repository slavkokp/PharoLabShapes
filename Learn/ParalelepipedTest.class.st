Class {
	#name : #ParalelepipedTest,
	#superclass : #TestCase,
	#category : #Learn
}

{ #category : #tests }
ParalelepipedTest >> testInitialization [
	self assert: Paralelepiped  new height  equals:1. 
	self assert: ((Paralelepiped  new base) class) equals: Rect  .
]

{ #category : #tests }
ParalelepipedTest >> testSideArea [
	|a b c|
c:= Rect  newWidth: 3 andHeight: 4.
a:= Paralelepiped   new.
b:= Paralelepiped newHeight: 5 andBase: c.

self  assert: ((a sideArea ) round: 4 ) equals: 6.0.
self  assert: ((b sideArea ) round: 4 ) equals: 70.0.
]

{ #category : #tests }
ParalelepipedTest >> testTotalArea [
	|a b c|
c:= Rect  newWidth: 3 andHeight: 4.
a:= Paralelepiped   new.
b:= Paralelepiped newHeight: 5 andBase: c.

self  assert: ((a totalArea ) round: 4 ) equals: 10.0.
self  assert: ((b totalArea ) round: 4 ) equals: 94.0.
]

{ #category : #tests }
ParalelepipedTest >> testVolume [
	|a b c|
c:= Rect  newWidth: 3 andHeight: 4.
a:= Paralelepiped   new.
b:= Paralelepiped newHeight: 5 andBase: c.

self  assert: ((a volume  ) round: 4 ) equals: 2.0.
self  assert: ((b volume  ) round: 4 ) equals: 60.0.
]
