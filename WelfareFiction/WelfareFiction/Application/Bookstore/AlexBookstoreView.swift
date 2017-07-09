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
    
    
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        super.draw(rect)
        
        tableView.frame = self.bounds
        tableView.backgroundColor = UIColor.red
        self.addSubview(tableView)
    }
    
    func buildBookstoreView(adapter:AlexBookstoreAdapter) -> Void {
        tableView.dataSource = adapter
        tableView.delegate = adapter
    }

}
