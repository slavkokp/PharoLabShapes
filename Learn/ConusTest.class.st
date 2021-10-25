Class {
	#name : #ConusTest,
	#superclass : #TestCase,
	#category : #Learn
}

{ #category : #tests }
ConusTest >> testInitialization [
	self assert: Conus new height  equals:1. 
	self assert: ((Conus new base) class) equals: Circle .
]

{ #category : #tests }
ConusTest >> testSideArea [
	|a b c|
c:= Circle newRadius: 4.
a:= Conus new.
b:= Conus newHeight: 4 andBase: c. 

self  assert: ((a sideArea ) round: 4 ) equals: 4.4429.
self  assert: ((b sideArea ) round: 4 ) equals: 71.0861.

]

{ #category : #tests }
ConusTest >> testTotalArea [
	|a b c|

c:= Circle newRadius: 4.
a:= Conus new.
b:= Conus newHeight: 4 andBase: c. 

self  assert: ((a totalArea  ) round: 4 ) equals: 7.5845.
self  assert: ((b totalArea  ) round: 4 ) equals: 121.3516.
]

{ #category : #tests }
ConusTest >> testVolume [
	|a b c|

c:= Circle newRadius: 4.
a:= Conus new.
b:= Conus newHeight: 4 andBase: c.

self  assert: ((a volume ) round: 4 ) equals: 1.0472.
self  assert: ((b volume ) round: 4 ) equals: 67.0206.
]
