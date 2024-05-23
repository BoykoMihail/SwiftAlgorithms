//
//  DiningPhilosophersProblem.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//


import Foundation

class Fork {
    let lock = NSLock()
}

let numberOfPhilosophers = 5
let forks = (0..<numberOfPhilosophers).map { _ in Fork() }

func think() {
    // Simulate thinking
    usleep(UInt32.random(in: 1000...10000))
}

func eat() {
    // Simulate eating
    usleep(UInt32.random(in: 1000...10000))
}

func philosopher(id: Int) {
    let leftFork = forks[id]
    let rightFork = forks[(id + 1) % numberOfPhilosophers]
    
    while true {
        think()
        
        if id % 2 == 0 {
            leftFork.lock.lock()
            rightFork.lock.lock()
        } else {
            rightFork.lock.lock()
            leftFork.lock.lock()
        }
        
        eat()
        
        leftFork.lock.unlock()
        rightFork.lock.unlock()
    }
}

// Create philosopher threads
for i in 0..<numberOfPhilosophers {
    DispatchQueue.global().async {
        philosopher(id: i)
    }
}
