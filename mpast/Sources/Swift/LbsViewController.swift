//
//  LbsViewController.swift
//  mpast
//
//  Created by 詹乐顺 on 2020/12/23.
//  Copyright © 2020 Alibaba. All rights reserved.
//

import Foundation
import UIKit

@objc class LbsViewController : UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // 获得定位
        let lbsButton = UIButton(type: UIButton.ButtonType.system)
        lbsButton.frame = CGRect(x: 60,y: 90,width: 300,height: 50)
        lbsButton.setTitle("获得定位", for: UIControl.State())
        lbsButton.backgroundColor = UIColor.orange
        lbsButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(lbsButton)//把button添加到当前视图
        lbsButton.addTarget(self,action: #selector(lbsClick),for:UIControl.Event.touchUpInside)
        
        // 返回
        let rtnButton = UIButton(type: UIButton.ButtonType.system)
        rtnButton.frame = CGRect(x: 60,y: 160,width: 300,height: 50)
        rtnButton.setTitle("返回", for: UIControl.State())
        rtnButton.backgroundColor = UIColor.orange
        rtnButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(rtnButton)//把button添加到当前视图
        rtnButton.addTarget(self,action: #selector(rtnClick),for:UIControl.Event.touchUpInside)
        
    }
    
    
    @objc func lbsClick(){
        print("LbsViewController lbsClick... ",Date())
        
    }
    
    @objc func rtnClick(){
        self.navigationController?.popViewController(animated: true)
    }
    
}
