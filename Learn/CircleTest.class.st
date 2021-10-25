Class {
	#name : #CircleTest,
	#superclass : #TestCase,
	#category : #Learn
}

{ #category : #tests }
CircleTest >> testArea [
	|a b|
a:= Circle new.
b:= Circle newRadius: 5.

self  assert: ((a area) round: 4 ) equals: 3.1416.
self assert: ((b area) round: 4 ) equals: 78.5398.
]

{ #category : #tests }
CircleTest >> testInitialization [
	self assert: Circle   new radius  equals: 1.
]

{ #category : #tests }
CircleTest >> testPerimeter [ 
	|a b|
a:= Circle new.
b:= Circle newRadius: 5.

self assert: ((a perimeter) round: 4 ) equals:  6.2832.
self assert: ((b perimeter) round: 4 ) equals: 31.4159.
]
