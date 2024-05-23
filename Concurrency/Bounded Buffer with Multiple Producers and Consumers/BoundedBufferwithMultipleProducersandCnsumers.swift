//
//  BoundedBufferwithMultipleProducersandCnsumers.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//

import Foundation

let bufferSize = 10
var buffer = [Int]()
let bufferQueue = DispatchQueue(label: "bufferQueue")
let itemsSemaphore = DispatchSemaphore(value: 0)
let spaceSemaphore = DispatchSemaphore(value: bufferSize)

func produceItem() -> Int {
    return Int.random(in: 1...100)
}

func consumeItem(_ item: Int) {
    print("Consumed item: \(item)")
}

func producer(id: Int) {
    while true {
        let item = produceItem()
        spaceSemaphore.wait()
        bufferQueue.sync {
            buffer.append(item)
            print("Producer \(id) produced item \(item)")
            itemsSemaphore.signal()
        }
    }
}

func consumer(id: Int) {
    while true {
        itemsSemaphore.wait()
        bufferQueue.sync {
            let item = buffer.removeFirst()
            print("Consumer \(id) consumed item \(item)")
            spaceSemaphore.signal()
            consumeItem(item)
        }
    }
}

// Create multiple producer and consumer threads
for i in 1...3 {
    DispatchQueue.global().async {
        producer(id: i)
    }
}

for i in 1...3 {
    DispatchQueue.global().async {
        consumer(id: i)
    }
}
