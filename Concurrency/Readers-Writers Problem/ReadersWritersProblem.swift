//
//  ReadersWritersProblem.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//

import Foundation

class ReadWriteLock {
    private let lock = DispatchSemaphore(value: 1)
    private var readers = 0

    func acquireReadLock() {
        lock.wait()
        readers += 1
        if readers == 1 {
            lock.wait()
        }
        lock.signal()
    }

    func releaseReadLock() {
        lock.wait()
        readers -= 1
        if readers == 0 {
            lock.signal()
        }
        lock.signal()
    }

    func acquireWriteLock() {
        lock.wait()
    }

    func releaseWriteLock() {
        lock.signal()
    }
}

let rwLock = ReadWriteLock()

func readData() {
    // Simulate reading data
    print("Reading data")
    usleep(UInt32.random(in: 1000...10000))
}

func writeData() {
    // Simulate writing data
    print("Writing data")
    usleep(UInt32.random(in: 1000...10000))
}

func reader() {
    while true {
        rwLock.acquireReadLock()
        readData()
        rwLock.releaseReadLock()
    }
}

func writer() {
    while true {
        rwLock.acquireWriteLock()
        writeData()
        rwLock.releaseWriteLock()
    }
}

// Create reader and writer threads
for _ in 0..<5 {
    DispatchQueue.global().async {
        reader()
    }
}

for _ in 0..<2 {
    DispatchQueue.global().async {
        writer()
    }
}
