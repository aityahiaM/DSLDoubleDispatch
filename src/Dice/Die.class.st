Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumber [
^ self new faces: aNumber; yourself


]

{ #category : 'accessing' }
Die >> + aDicable [

    ^ aDicable sumWithDie: self
]

{ #category : 'accessing' }
Die >> faces [ 
 ^ faces 
]

{ #category : 'accessing' }
Die >> faces: aNumber [
	faces := aNumber
]

{ #category : 'initialization' }
Die >> initialize [ 
  faces := 6
]

{ #category : 'printing' }
Die >> printOn: aStream [
super printOn: aStream.
aStream nextPutAll: ' (', faces printString, ')'

]

{ #category : 'accessing' }
Die >> roll [ 
  ^ (1 to: faces) atRandom 
]

{ #category : 'accessing' }
Die >> sumWithDie: aDie [
	
	^ DieHandle new 
		addDie: self; 
		addDie: aDie; yourself
]

{ #category : 'accessing' }
Die >> sumWithDieHandle: aDieHandle [

    ^ aDieHandle sumWithDie: self
]
