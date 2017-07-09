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
        alexBookClassificationView.url = "http://city.kingreader.com/home/choice?ak=tkr_ios&lw=ul&ism=1&sc=&msc=&vsn=2006003&tk=vkMcze6Mh96VHfBBDbfgIh5VKazqtROerFYbKT4xGJIKEoCj2f3QpRxdB7Ioza3mqWRgCq32od4%3D&isft=0&apptype=5&cid=506&ishp=0&channelid=506"
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
