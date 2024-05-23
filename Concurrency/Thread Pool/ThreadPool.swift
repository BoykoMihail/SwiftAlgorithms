//
//  ThreadPool.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//


import Foundation

class ThreadPool {
    private let queue: DispatchQueue
    private let semaphore: DispatchSemaphore

    init(workerCount: Int) {
        queue = DispatchQueue(label: "com.threadpool.queue", attributes: .concurrent)
        semaphore = DispatchSemaphore(value: workerCount)
    }

    func submit(task: @escaping () -> Void) {
        semaphore.wait()
        queue.async {
            task()
            self.semaphore.signal()
        }
    }
}

let threadPool = ThreadPool(workerCount: 3)

func sampleTask(id: Int) {
    print("Task \(id) started")
    Thread.sleep(forTimeInterval: 2)  // Simulate work
    print("Task \(id) finished")
}

for i in 1...10 {
    threadPool.submit {
        sampleTask(id: i)
    }
}
