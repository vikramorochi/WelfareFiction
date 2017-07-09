//
//  AlexBookstoreView.swift
//  WelfareFiction
//
//  Created by stu on 2017/7/9.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class AlexBookstoreView: AlexView {

    private var tableView:UITableView = UITableView()
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        super.draw(rect)
        
        tableView.frame = self.bounds
        tableView.backgroundColor = UIColor.red
        tableView.register(UINib.init(nibName: "AlexTableViewCell", bundle: nil), forCellReuseIdentifier: "bookstoreCell")
        self.addSubview(tableView)
    }
    
    func buildBookstoreView(adapter:AlexBookstoreAdapter) -> Void {
        tableView.dataSource = adapter
        tableView.delegate = adapter
    }

}
