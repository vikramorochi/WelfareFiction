//
//  AlexBookstoreViewController.swift
//  WelfareFiction
//
//  Created by stu on 2017/7/9.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit



class AlexBookstoreViewController: AlexViewController,AlexAdapterDelegate {

    var alexBookstoreView:AlexBookstoreView = AlexBookstoreView()
    var alexBookstorePresenter:AlexBookstorePresenter = AlexBookstorePresenter()
    var alexBookstoreAdapter:AlexBookstoreAdapter = AlexBookstoreAdapter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alexBookstoreAdapter.viewController = self
        alexBookstoreAdapter.tableViewDelegate = self
        alexBookstoreView.buildBookstoreView(adapter: alexBookstoreAdapter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView() {
        super.loadView()
        self.view = alexBookstoreView
    }

   
}
