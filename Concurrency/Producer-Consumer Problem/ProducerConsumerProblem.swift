//
//  ProducerConsumerProblem.swift
//
//
//  Created by Mihail Boyko on 23/05/24.
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

func producer() {
    while true {
        let item = produceItem()
        spaceSemaphore.wait()
        bufferQueue.async {
            buffer.append(item)
            itemsSemaphore.signal()
        }
    }
}

func consumer() {
    while true {
        itemsSemaphore.wait()
        bufferQueue.async {
            let item = buffer.removeFirst()
            spaceSemaphore.signal()
            consumeItem(item)
        }
    }
}

// Create producer and consumer threads
DispatchQueue.global().async {
    producer()
}

DispatchQueue.global().async {
    consumer()
}
