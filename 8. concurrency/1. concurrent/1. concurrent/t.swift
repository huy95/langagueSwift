//
//  ViewController.swift
//  1. concurrent
//
//  Created by Huy on 7/7/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        simpleConcurrentQueue()
//        simpleQueue()
        simpleQueues()
    }
    // concurrent queue
    func simpleConcurrentQueue(){
        let concurrentQueue = DispatchQueue(label: "test", attributes: .concurrent)
        for i in 1 ... 10 {
            concurrentQueue.async {
                print("Tash \(i) - \(Thread.current)")
                sleep(1)
            }
        }
        print("complete- \(Thread.current)")
    }
    // serial
    func simpleQueue(){
        let serialQueue = DispatchQueue(label: "test Queue")
        for i in 1 ... 5 {
            serialQueue.async {
                print("Tash \(i) - \(Thread.current)")
                sleep(1)
            }
        }
    }
//    Trường hợp 1: gửi 2 async task vào serial queue
    func simpleQueues() {
      let queue = DispatchQueue(label: "com.bigZero.GCDSamples")
      
      queue.async {
          for i in 0..<5 {
              print("🔵 \(i) -\( Thread.current))")
          }
      }
      
      queue.async {
          for i in 0..<5 {
              print("⚾️ \(i) - \(Thread.current))")
          }
      }
      
      for i in 0..<10 {
          print("❤️ \(i) - \(Thread.current)")
      }
    }
//    Trường hợp 2: gửi 2 task Sync vào Serial Queue
    func simpleQueues2() {
        let serialQueue = DispatchQueue(label: "com.bigZero.GCDSamples")
        serialQueue.sync {
            for i in 0..<5 {
                print("🔵 \(i) -\( Thread.current))")
            }
        }
        
        serialQueue.sync {
            for i in 0..<5 {
                print("⚾️ \(i) - \(Thread.current))")
            }
        }
        
        for i in 0..<10 {
            print("❤️ \(i) - \(Thread.current)")
        }
    }
    // thay doi 1 sync thanh async
    func simpleQueues3() {
        let serialQueue = DispatchQueue(label: "com.bigZero.GCDSamples")
        serialQueue.sync {
            for i in 0..<5 {
                print("🔵 \(i) -\( Thread.current))")
            }
        }
        
        serialQueue.async {
            for i in 0..<5 {
                print("⚾️ \(i) - \(Thread.current))")
            }
        }
        
        for i in 0..<10 {
            print("❤️ \(i) - \(Thread.current)")
        }
    }
}

