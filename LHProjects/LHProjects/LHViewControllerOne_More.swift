//
//  LHViewControllerOne_More.swift
//  LHProjects
//
//  Created by feeyo on 2017/9/22.
//  Copyright © 2017年 lihuan. All rights reserved.
//

import UIKit

class LHViewControllerOne_More: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        // Do any additional setup after loading the view.
       print(self.moreValues(scores: [1,2,3]));
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //简单值、let声明常量,var声明变量,一般如果有确定值直接赋值,编译器会自动编译类型,如果为空值,则需要声明类型
    func easy_values() {
        
    }
    //控制流 for-in for,while和repeat-while(和oc不同之点在于布尔值必须要有，而不是如果没有就默认为0)
    func control_function() {
        let studentScore = [80,56,96,23,100];
        var teamScore = 0;
        for score in studentScore
        {
            if score > 50 {
                teamScore += 3;
            }else
            {
                teamScore += 1;
            }
        }
        print(teamScore);
        
    }
    func control_switch() {
        let vegetable = "red pepper";
        switch vegetable {
        case "apple":
            print("i'm apple");
        default:
            print("u r rubbish")
        }
        
    }
    //...while...and so on!
    
    //函数和闭包func声明一个函数,使用名字和参数来调用,->指明返回类型
    //使用元祖让一个函数返回多个值,同时也可以有可变个参数
    func moreValues(scores:[Int]) -> (min:Int,max:Int,sum:Int)
    {
        return(1,2,3);
    }
    //可变个参数
    func change_vales(numbers:Int...) -> Int {
        for number in numbers {
            return number;
        }
        return 1;
    }
    //对象和类。。。19页
}
