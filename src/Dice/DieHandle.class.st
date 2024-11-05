Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'accessing' }
DieHandle >> + aDicable [

    ^ aDicable sumWithDieHandle: self
]

{ #category : 'initialization' }
DieHandle >> addDie: aDie [ 
 dice add: aDie.
]

{ #category : 'accessing' }
DieHandle >> dice [ 
 ^ dice
]

{ #category : 'initialization' }
DieHandle >> diceNumber [ 
 ^ dice size 
]

{ #category : 'accessing' }
DieHandle >> faces [
 " Itère sur chaque dé et collecte ces résultats dans une nouvelle collection pour les additionner par la méthode sum"
 ^ (dice collect: [ :each | each faces]) sum.
]

{ #category : 'initialization' }
DieHandle >> initialize [ 
 dice := OrderedCollection new. 
]

{ #category : 'accessing' }
DieHandle >> roll [
 " Itère sur chaque dé et collecte ces résultats dans une nouvelle collection pour les additionner par la méthode sum"
 ^ (dice collect: [ :each | each roll]) sum.
]

{ #category : 'accessing' }
DieHandle >> sumWithDie: aDie [
    | handle |
    handle := self class new.
    self dice do: [ :each | handle addDie: each ].
    handle addDie: aDie.
    ^ handle
]

{ #category : 'accessing' }
DieHandle >> sumWithDieHandle: aDieHandle [
    | handle |
    handle := self class new.
    self dice do: [ :each | handle addDie: each ].
    aDieHandle dice do: [ :each | handle addDie: each ].
    ^ handle
]
