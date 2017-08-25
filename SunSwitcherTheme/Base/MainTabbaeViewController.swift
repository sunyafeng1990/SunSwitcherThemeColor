//
//  MainTabbaeViewController.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

class MainTabbaeViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addChildViewController(childController:SunHomeViewController(), title: "首页", img: "common_tab_home_n", selectedImg: "common_tab_home_s")
        self.addChildViewController(childController: SunThemeViewController(), title: "主题色", img: "common_tab_pengyouquan_n", selectedImg: "common_tab_pengyouquan_S")
        
        
    
    }

    
    func addChildViewController(childController: UIViewController,title:String,img:String,selectedImg:String) {
        
        childController.title = title;
        childController.tabBarItem.image = UIImage.init(named: img)
        childController.tabBarItem.selectedImage = UIImage.init(named: selectedImg)?.withRenderingMode(.alwaysOriginal)
        
        let nav  = UINavigationController.init(rootViewController: childController)
        self.addChildViewController(nav)
        
        
    }
    
    
    private func createItemBar(title:String,tag:Int)->UITabBarItem{
        
        
        let item = UITabBarItem.init(title: title, image: nil, tag: tag)
        return item
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    

    
}
