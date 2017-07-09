//
//  AlexClassificationViewController.swift
//  WelfareFiction
//
//  Created by stu on 2017/7/9.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class AlexClassificationViewController: AlexViewController,AlexAdapterWebViewDelegate {
    
    var alexBookClassificationView:AlexBookClassificationView = AlexBookClassificationView()
    var alexBookClassificationAdapter:AlexBookClassificationAdapter = AlexBookClassificationAdapter()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        alexBookClassificationAdapter.webViewDelegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func loadView() {
        super.loadView()
        self.view = alexBookClassificationView
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
