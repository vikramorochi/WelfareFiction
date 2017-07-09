//
//  AlexAdapter.swift
//  WelfareFiction
//
//  Created by stu on 2017/7/9.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit
import WebKit

protocol AlexAdapterDelegate{
//    static func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
//    static func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
}

protocol AlexAdapterWebViewDelegate{
    //    static func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    //    static func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
}


class AlexAdapter:NSObject,UITableViewDelegate,UITableViewDataSource{
    
    var tableViewDelegate:AlexAdapterDelegate?
    var webViewDelegate:AlexAdapterWebViewDelegate?
    var viewController:AlexViewController?
    var navigationController:AlexNavigationController?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    func setAdapterArray(array:NSArray) -> Void {
        
    }
    

}
