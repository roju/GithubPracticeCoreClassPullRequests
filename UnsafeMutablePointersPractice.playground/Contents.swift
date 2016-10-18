//: Playground - noun: a place where people can play

import UIKit

// allocate a memory space
let str = UnsafeMutablePointer<String>.allocate(capacity: 1)

// initialise memory
str.initialize(to: "Hello Swift")

// reveals what is in the memory location
str.pointee

// change the contents of the memory
str.pointee = "Hello World"

// reveals what is in the memory location
str.pointee

// deinitialize
str.deinitialize()

// deallocate
str.deallocate(capacity: 1)


/* --------------------------------------- More Advanced --------------------------------------- */

// allocate memory with a type
let bStr = UnsafeMutablePointer<String>.allocate(capacity: 1)

// initialize the memory location
bStr.initialize(to: "Hello World")

// memory address returned as a hexadecimal (in string format)
bStr.debugDescription

// memory address as an integer
bStr.hashValue

// following memory address
bStr.successor().debugDescription

// previous memory address, no guarantee of it being allocated or initialized. Attempt to access memory likely to cause a crash.
bStr.predecessor().debugDescription

// following memory address
bStr.successor().hashValue

// previous memory address
bStr.predecessor().hashValue

// distance between the two memory addresses, must be of same type. This example assumes that aStr hasn't yet been destroyed or deallocated
bStr.distance(to: str)

// move to a new memory address // "Equivalent to reading `memory` property and calling `destroy()` /// but more efficient."
bStr.move()

// dealloc
bStr.deallocate(capacity: 1)

// blah blah

