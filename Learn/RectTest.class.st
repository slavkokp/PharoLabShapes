Class {
	#name : #RectTest,
	#superclass : #TestCase,
	#category : #Learn
}

{ #category : #tests }
RectTest >> testArea [
   | a b |
a := Rect new.
b := Rect newWidth: 3 andHeight: 4.
self  assert: a area equals: 2.
self assert: b area equals: 12
]

{ #category : #tests }
RectTest >> testInitialization [ 
   self assert: Rect new width equals: 1.
  self assert: Rect new height  equals: 2
]

{ #category : #tests }
RectTest >> testPerimeter [ 
   | a b |
a := Rect new.
b := Rect newWidth: 3 andHeight: 4.
self  assert: a perimeter  equals: 6.
self assert: b perimeter  equals: 14
]
