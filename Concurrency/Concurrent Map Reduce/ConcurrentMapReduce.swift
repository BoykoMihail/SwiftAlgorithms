//
//  ConcurrentMapReduce.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//

import Foundation

let data = Array(1...100)
let chunkSize = 10

func mapFunction(_ value: Int) -> Int {
    return value * value
}

func reduceFunction(_ partialResult: Int, _ nextValue: Int) -> Int {
    return partialResult + nextValue
}

let dispatchGroup = DispatchGroup()
let resultQueue = DispatchQueue(label: "com.mapreduce.result")
var intermediateResults = [Int]()

for chunk in stride(from: 0, to: data.count, by: chunkSize) {
    let end = min(chunk + chunkSize, data.count)
    let subArray = Array(data[chunk..<end])

    dispatchGroup.enter()
    DispatchQueue.global().async {
        let mapped = subArray.map(mapFunction)
        let reduced = mapped.reduce(0, reduceFunction)
        resultQueue.async {
            intermediateResults.append(reduced)
            dispatchGroup.leave()
        }
    }
}

dispatchGroup.notify(queue: .main) {
    let finalResult = intermediateResults.reduce(0, reduceFunction)
    print("Final result: \(finalResult)")
}
