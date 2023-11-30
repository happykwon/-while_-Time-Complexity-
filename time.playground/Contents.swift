import UIKit

var greeting = "Hello, playground"



import Foundation

func singleLoop(_ n: Int) {
    var i = 0
    while i < n {
        i += 1
    }
}

func nestedLoops(_ n: Int) {
    var i = 0
    while i < n {
        var j = 0
        while j < n {
            j += 1
        }
        i += 1
    }
}


let inputSize = 1000


let startTimeSingle = Date()
singleLoop(inputSize)
let endTimeSingle = Date()
let executionTimeSingle = endTimeSingle.timeIntervalSince(startTimeSingle)
print("단일 while 문 - 입력 크기 \(inputSize) 실행 시간: \(executionTimeSingle)초")

// 중첩된 while 문 실행 시간 측정
let startTimeNested = Date()
nestedLoops(inputSize)
let endTimeNested = Date()
let executionTimeNested = endTimeNested.timeIntervalSince(startTimeNested)
print("중첩된 while 문 - 입력 크기 \(inputSize) 실행 시간: \(executionTimeNested)초")
