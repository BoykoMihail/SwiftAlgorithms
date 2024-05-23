//
//  BarbershopProblem.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//


import Foundation

let maxCapacity = 5
var waitingCustomers = 0
let customerSemaphore = DispatchSemaphore(value: 0)
let barberSemaphore = DispatchSemaphore(value: 0)
let mutex = NSLock()

func cutHair() {
    // Simulate cutting hair
    print("Cutting hair")
    usleep(UInt32.random(in: 10000...20000))
}

func getHaircut() {
    // Simulate getting a haircut
    print("Getting a haircut")
    usleep(UInt32.random(in: 10000...20000))
}

func barber() {
    while true {
        customerSemaphore.wait()
        mutex.lock()
        waitingCustomers -= 1
        barberSemaphore.signal()
        mutex.unlock()
        cutHair()
    }
}

func customer() {
    mutex.lock()
    if waitingCustomers < maxCapacity {
        waitingCustomers += 1
        customerSemaphore.signal()
        mutex.unlock()
        barberSemaphore.wait()
        getHaircut()
    } else {
        mutex.unlock()
        print("Customer left because the shop is full")
    }
}

// Create barber and customer threads
DispatchQueue.global().async {
    barber()
}

for _ in 0..<10 {
    DispatchQueue.global().async {
        customer()
    }
}
