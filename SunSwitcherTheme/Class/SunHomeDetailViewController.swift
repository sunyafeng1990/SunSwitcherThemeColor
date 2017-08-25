//
//  SunHomeDetailViewController.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

class SunHomeDetailViewController: SunBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "详情子界面"
        
        self.addAllSubViews()
    }

    func addAllSubViews() {
        let subViews = SunSubView(frame: CGRect(x: 80, y: 80, width: 200, height: 50))
        subViews.titleLabel?.text = "第一个页面的子页面"
        subViews.detailLabel?.text = "第一个页面子页面详情"
        self.view.addSubview(subViews)
        
    }
    
}
