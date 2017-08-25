//
//  SunHomeViewController.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

class SunHomeViewController: SunBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

         self.title = "首页"
        
         self.setupUI()
        
    }
    func setupUI() {
        let  smallView = SunSubView.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 100))
        smallView.titleLabel?.text = "首页"
        smallView.detailLabel?.text = "这真的是在首页"
        self.view.addSubview(smallView)
        
        let btn = UIButton.init(frame: CGRect.init(x: 150, y: 200, width: 80, height: 40))
        btn.setTitle("点我Push", for: .normal)
        btn.setTitleColor(UIColor.red, for: .normal)
        btn.addTarget(self, action: #selector(btnClick(sender:)), for: .touchUpInside)
        self.view.addSubview(btn)
        
        
    }
    
    
    func btnClick(sender:UIButton) {
//        self.navigationController?.pushViewController(SunHomeDetailViewController(), animated: true)
        
        self.navigationController?.show(SunHomeDetailViewController(), sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
