//
//  ConcurrentAccesstoSharedResource.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//


import Foundation

var sharedResource = 0
let lock = NSLock()

func incrementResource(by amount: Int) {
    lock.lock()
    sharedResource += amount
    print("Resource incremented by \(amount), new value: \(sharedResource)")
    lock.unlock()
}

func accessResource(id: Int) {
    for _ in 1...10 {
        incrementResource(by: 1)
        Thread.sleep(forTimeInterval: 0.1)
    }
}

// Create multiple threads to access the shared resource
for i in 1...5 {
    DispatchQueue.global().async {
        accessResource(id: i)
    }
}
