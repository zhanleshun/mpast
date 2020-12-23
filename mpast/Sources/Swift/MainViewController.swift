//
//  MainViewController.swift
//  mpast
//
//  Created by 詹乐顺 on 2020/12/23.
//  Copyright © 2020 Alibaba. All rights reserved.
//

import Foundation
import UIKit

@objc class MainViewController : UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 120,y: 80,width: 200,height: 48)
        button.setTitle("ZHUYAO", for: UIControl.State())
        button.backgroundColor = UIColor.cyan
        button.setTitleColor(UIColor.black, for: UIControl.State())
        self.view.addSubview(button)//把button添加到当前视图
        button.addTarget(self,action: #selector(touchBegin),for:UIControl.Event.touchUpInside)//一个设计好了的，可以监听到用户的点击事件的函数
    }
    
    @objc func touchBegin() {
        print("用户点击了按钮")
    }
}
