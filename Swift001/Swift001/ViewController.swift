//
//  ViewController.swift
//  Swift001
//
//  Created by feeyo on 2018/7/20.
//  Copyright © 2018年 lihuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let maxNum = 100
    var changeNum = 0
    var testString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let count = makeCake(name: "lihuan", count: 5)
        assert(count >= 5,"A cake large than 4")
        
        makeRange();
        
    }

    func makeCake(name:String,count:Int) -> Int {
        if name == "lihuan" {
            return count
        }
        return 0
    }
    
    func makeRange() {
        let names = ["li","zhang","wang","he"]
        
        
        for index in names[..<2] {
            print("test name \(index)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

