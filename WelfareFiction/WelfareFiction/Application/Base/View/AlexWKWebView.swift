//
//  AlexWKWebView.swift
//  WelfareFiction
//
//  Created by stu on 2017/7/9.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit
import WebKit

class AlexWKWebView: AlexView {

    var wkWebView:WKWebView = WKWebView()
    var url:String = ""
    
    func update(rect:CGRect){
        wkWebView.frame = rect
        wkWebView.load(URLRequest(url:URL(string: self.url)!))
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        wkWebView.frame = rect
        self.addSubview(wkWebView)
    }
}
