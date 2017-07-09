//
//  AlexTableViewCell.swift
//  WelfareFiction
//
//  Created by stu on 2017/7/9.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class AlexTableViewCell: UITableViewCell {
    
    let cellContent:AlexWKWebView = AlexWKWebView()
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func update(rect:CGRect){
        cellContent.update(rect: rect)
        cellContent.frame = self.bounds
        self.addSubview(cellContent)
        self.contentView.frame = CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height)
    }
    
    
}
