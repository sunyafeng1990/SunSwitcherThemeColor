//
//  SunThemeViewController.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

class SunThemeViewController: SunBaseViewController,UITableViewDelegate,UITableViewDataSource {

//    var table  = UITableView()
    let cellIndentifier = "themeCell"
    var selectecIndex:Int = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "主题色"
        self.view.addSubview(self.SunTable)
        self.SunTable.register(SunThemeTableViewCell.self, forCellReuseIdentifier: self.cellIndentifier)
    }
//   
    override func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
    self.SunTable.backgroundColor = theme.backgroundColor
    
    }
    
//  懒加载 table
    lazy var SunTable:UITableView = {
        let table  = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.plain)
        table.delegate = self as UITableViewDelegate
        table.dataSource = self as UITableViewDataSource
        table.tableFooterView = UIView()
         return table
    }()
    
    
// tableView 数据源 代理方法
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:SunThemeTableViewCell? = tableView.dequeueReusableCell(withIdentifier: self.cellIndentifier) as? SunThemeTableViewCell
        if cell == nil {
            cell = SunThemeTableViewCell.init(style: .default, reuseIdentifier: self.cellIndentifier)
        }

        if indexPath.row == self.selectecIndex {
            cell?.accessoryType = .checkmark
        }else {
            cell?.accessoryType = .none
        }
        
        cell?.configureCell(index: indexPath.row)
        
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectecIndex = indexPath.row
        self.SunTable.reloadData()
    }
    
}
