//
//  AlexBookstoreAdapter.swift
//  WelfareFiction
//
//  Created by stu on 2017/7/9.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class AlexBookstoreAdapter: AlexAdapter {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var tableViewCell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if tableViewCell == nil{
            tableViewCell =  UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
        }
        tableViewCell?.textLabel?.text = "111111"
        tableViewCell?.detailTextLabel?.text = "222222"
        
        return tableViewCell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("123213")
        
        self.viewController?.navigationController?.pushViewController(AlexClassificationViewController(), animated: true)
    }
    
}
