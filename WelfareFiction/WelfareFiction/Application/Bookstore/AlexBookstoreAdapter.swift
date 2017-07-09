//
//  AlexBookstoreAdapter.swift
//  WelfareFiction
//
//  Created by stu on 2017/7/9.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class AlexBookstoreAdapter: AlexAdapter {
    
    var pageHeight:CGFloat = UIScreen.main.bounds.size.height
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let tableViewCell:AlexTableViewCell = tableView.dequeueReusableCell(withIdentifier: "bookstoreCell", for: indexPath) as! AlexTableViewCell
        tableViewCell.cellContent.url = "http://city.kingreader.com/home/choice?ak=tkr_ios&lw=ul&ism=1&sc=&msc=&vsn=2006003&tk=vkMcze6Mh96VHfBBDbfgIh5VKazqtROerFYbKT4xGJIKEoCj2f3QpRxdB7Ioza3mqWRgCq32od4%3D&isft=0&apptype=5&cid=506&ishp=0&channelid=506"
        tableViewCell.update(rect: (self.viewController?.view.bounds)!)
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        NSLog("screen:\(UIScreen.main.bounds.size.height)")
        NSLog("navigation:\((self.viewController?.navigationController?.navigationBar.frame.size.height)!)")
        NSLog("tabbar:\((self.viewController?.navigationController?.tabBarController?.tabBar.frame.size.height)!)")
        
        return UIScreen.main.bounds.size.height - (self.viewController?.navigationController?.navigationBar.frame.size.height)! - (self.viewController?.navigationController?.tabBarController?.tabBar.frame.size.height)!-10
    }
    
}
