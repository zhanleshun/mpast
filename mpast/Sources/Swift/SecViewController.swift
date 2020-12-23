//
//  SecViewController.swift
//  mpast
//
//  Created by 洪 周 on 2020/12/21.
//  Copyright © 2020 MSl. All rights reserved.
//

import Foundation
import UIKit

@objc class SecViewController : UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 120,y: 80,width: 200,height: 48)
        button.setTitle("按钮", for: UIControl.State())
        button.backgroundColor = UIColor.cyan
        button.setTitleColor(UIColor.black, for: UIControl.State())
        self.view.addSubview(button)//把button添加到当前视图
        button.addTarget(self,action: #selector(touchBegin),for:UIControl.Event.touchUpInside)//一个设计好了的，可以监听到用户的点击事件的函数
    }
    
    @objc func touchBegin() {
            print("用户点击了按钮")
    }
}
