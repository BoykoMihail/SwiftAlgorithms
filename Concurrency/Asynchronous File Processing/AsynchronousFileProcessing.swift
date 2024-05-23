//
//  AsynchronousFileProcessing.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//


import Foundation

let fileQueue = DispatchQueue(label: "fileQueue", attributes: .concurrent)
let resultQueue = DispatchQueue(label: "resultQueue")

func processFile(filename: String, completion: @escaping (String) -> Void) {
    fileQueue.async {
        do {
            let content = try String(contentsOfFile: filename)
            let processedContent = content.uppercased() // Example processing
            completion(processedContent)
        } catch {
            print("Error reading file: \(filename)")
        }
    }
}

func writeResult(to filename: String, content: String) {
    resultQueue.async {
        do {
            try content.write(toFile: filename, atomically: true, encoding: .utf8)
            print("Successfully wrote to file: \(filename)")
        } catch {
            print("Error writing to file: \(filename)")
        }
    }
}

let filesToProcess = ["file1.txt", "file2.txt", "file3.txt"]
let resultFile = "result.txt"
var results = [String]()

let dispatchGroup = DispatchGroup()

for file in filesToProcess {
    dispatchGroup.enter()
    processFile(filename: file) { processedContent in
        resultQueue.sync {
            results.append(processedContent)
            dispatchGroup.leave()
        }
    }
}

dispatchGroup.notify(queue: .main) {
    let finalResult = results.joined(separator: "\n")
    writeResult(to: resultFile, content: finalResult)
}
