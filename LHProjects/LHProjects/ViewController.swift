//
//  ViewController.swift
//  LHProjects
//
//  Created by feeyo on 2017/9/22.
//  Copyright © 2017年 lihuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView = UITableView();
    var data = [String]();
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.data = ["初识swift","swift基础教程","语言参考","苹果官方翻译"];
        self.view.backgroundColor = UIColor.gray;
        self.tableView = UITableView.init(frame:self.view.bounds,style:UITableViewStyle.plain);
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.view.addSubview(self.tableView);
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identify:String = "tableCell";
        var cell = tableView.dequeueReusableCell(withIdentifier: identify);
        if cell == nil {
            cell = UITableViewCell(style:UITableViewCellStyle.default,reuseIdentifier:identify);
        }
        cell?.textLabel?.text = self.data[indexPath.row];
        return cell!;
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath)");
    self.navigationController?.pushViewController(LHViewControllerOne(), animated: true);
    }
    
}

