//
//  ViewController.swift
//  QJBTableView
//
//  Created by macbookpro on 17/1/7.
//  Copyright © 2017年 macbookpro. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tableView:UITableView!
        
        tableView = UITableView.init(frame: self.view.frame, style: UITableViewStyle.plain);
        tableView.backgroundColor = UIColor.blue;
        self.view.addSubview(tableView);
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cellID");
        tableView.dataSource = self;
    }
    
   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 10;
    }
    
    
   
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath);
        
        return cell;
    }

}





/// 界面属性
