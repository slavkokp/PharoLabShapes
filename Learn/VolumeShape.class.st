Class {
	#name : #VolumeShape,
	#superclass : #Object,
	#instVars : [
		'height',
		'base'
	],
	#category : #Learn
}

{ #category : #'instance creation' }
VolumeShape class >> newHeight: aNumber andBase: aFlatShape [

| inst |
inst := super new.
inst height: aNumber.
inst base: aFlatShape.
^inst
]

{ #category : #accessing }
VolumeShape >> base [
^ base.
]

{ #category : #accessing }
VolumeShape >> base: aFloatShape [
base := aFloatShape.
]

{ #category : #calculations }
VolumeShape >> baseArea [ 
^base area
]

{ #category : #accessing }
VolumeShape >> height [ 
^ height.
]

{ #category : #accessing }
VolumeShape >> height: aNumber [
height := aNumber.
]

{ #category : #initialization }
VolumeShape >> initialize [ 
^self subclassResponsibility 
]

{ #category : #printing }
VolumeShape >> printOn: aStream [
	aStream nextPutAll: self class asString.
	aStream nextPutAll: ', height:'.
	self height printOn: aStream.
	aStream nextPut: $,.
	self base printOn: aStream.
	aStream nextPut: $..
]

{ #category : #calculations }
VolumeShape >> sideArea [ 
^self subclassResponsibility 
]

{ #category : #calculations }
VolumeShape >> totalArea [ 
^self subclassResponsibility 
]

{ #category : #calculations }
VolumeShape >> volume [ 
^self subclassResponsibility 
]
