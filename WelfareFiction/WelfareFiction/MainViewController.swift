//
//  MainViewController.swift
//  LoveTravel
//
//  Created by stu on 2017/7/3.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addChildStoryboardWithName(name: "AlexBookshelf")
        self.addChildStoryboardWithName(name: "AlexBookstore")
        self.addChildStoryboardWithName(name: "AlexWelfare")
        self.addChildStoryboardWithName(name: "AlexMe")
    }
    
    func addChildStoryboardWithName(name:String) -> Void {
        let childStoryboard = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()
        self.addChildViewController(childStoryboard!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

