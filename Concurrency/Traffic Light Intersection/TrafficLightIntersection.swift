//
//  TrafficLightIntersection.swift
//
//
//  Created by Mihail Boyko on 01/04/24.
//

import Foundation

class TrafficLight {
    enum State {
        case nsGreen
        case ewGreen
    }

    private var state: State = .nsGreen
    private let stateLock = NSLock()

    func changeState() {
        stateLock.lock()
        if state == .nsGreen {
            state = .ewGreen
        } else {
            state = .nsGreen
        }
        print("Traffic light changed to \(state)")
        stateLock.unlock()
    }

    func run() {
        while true {
            Thread.sleep(forTimeInterval: 10)  // Change state every 10 seconds
            changeState()
        }
    }

    func canPass(direction: String) -> Bool {
        stateLock.lock()
        let canPass = (direction == "N" || direction == "S") && state == .nsGreen ||
                      (direction == "E" || direction == "W") && state == .ewGreen
        stateLock.unlock()
        return canPass
    }
}

let trafficLight = TrafficLight()

// Run the traffic light system in a separate thread
DispatchQueue.global().async {
    trafficLight.run()
}

func car(direction: String) {
    while true {
        Thread.sleep(forTimeInterval: 1)  // Cars arrive at random intervals
        if trafficLight.canPass(direction: direction) {
            print("Car going \(direction) is passing")
        } else {
            print("Car going \(direction) is waiting")
        }
    }
}

// Create car threads for each direction
for direction in ["N", "S", "E", "W"] {
    DispatchQueue.global().async {
        car(direction: direction)
    }
}
