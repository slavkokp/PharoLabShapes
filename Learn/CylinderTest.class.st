Class {
	#name : #CylinderTest,
	#superclass : #TestCase,
	#category : #Learn
}

{ #category : #tests }
CylinderTest >> testInitialization [
	self assert: Cylinder  new height  equals:1. 
	self assert: ((Cylinder new base) class) equals: Circle .
]

{ #category : #tests }
CylinderTest >> testSideArea [
	|a b c|
c:= Circle newRadius: 4.
a:= Cylinder  new.
b:= Cylinder newHeight: 5 andBase: c. 

self  assert: ((a sideArea ) round: 4 ) equals: 6.2832.
self  assert: ((b sideArea ) round: 4 ) equals: 125.6637.
]

{ #category : #tests }
CylinderTest >> testTotalArea [
	|a b c|
c:= Circle newRadius: 4.
a:= Cylinder  new.
b:= Cylinder newHeight: 5 andBase: c. 

self  assert: ((a totalArea  ) round: 4 ) equals: 12.5664.
self  assert: ((b totalArea ) round: 4 ) equals: 226.1947.
]

{ #category : #tests }
CylinderTest >> testVolume [
	|a b c|
c:= Circle newRadius: 4.
a:= Cylinder  new.
b:= Cylinder newHeight: 5 andBase: c. 

self  assert: ((a volume ) round: 4 ) equals: 3.1416.
self  assert: ((b volume ) round: 4 ) equals: 251.3274.
]
