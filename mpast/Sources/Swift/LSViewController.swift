//
//  MainViewController2.swift
//  mpast
//
//  Created by 詹乐顺 on 2020/12/23.
//  Copyright © 2020 MSL. All rights reserved.
//

import Foundation
import UIKit

@objc class LSViewController : UIViewController {
        
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // 智能投放
        let cdpButton = UIButton(type: UIButton.ButtonType.system)
        cdpButton.frame = CGRect(x: 60,y: 90,width: 300,height: 50)
        cdpButton.setTitle("智能投放", for: UIControl.State())
        cdpButton.backgroundColor = UIColor.orange
        cdpButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(cdpButton)//把button添加到当前视图
        cdpButton.addTarget(self,action: #selector(cdpJump),for:UIControl.Event.touchUpInside)
        
        // 热修复
        let hotfixButton = UIButton(type: UIButton.ButtonType.system)
        hotfixButton.frame = CGRect(x: 60,y: 160,width: 300,height: 50)
        hotfixButton.setTitle("热修复", for: UIControl.State())
        hotfixButton.backgroundColor = UIColor.orange
        hotfixButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(hotfixButton)//把button添加到当前视图
        hotfixButton.addTarget(self,action: #selector(hotfixJump),for:UIControl.Event.touchUpInside)
        
        // 音视频
        let rtcButton = UIButton(type: UIButton.ButtonType.system)
        rtcButton.frame = CGRect(x: 60,y: 230,width: 300,height: 50)
        rtcButton.setTitle("音视频", for: UIControl.State())
        rtcButton.backgroundColor = UIColor.orange
        rtcButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(rtcButton)//把button添加到当前视图
        rtcButton.addTarget(self,action: #selector(rtcJump),for:UIControl.Event.touchUpInside)
        
        // 定位
        let lbsButton = UIButton(type: UIButton.ButtonType.system)
        lbsButton.frame = CGRect(x: 60,y: 300,width: 300,height: 50)
        lbsButton.setTitle("定位", for: UIControl.State())
        lbsButton.backgroundColor = UIColor.orange
        lbsButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(lbsButton)//把button添加到当前视图
        lbsButton.addTarget(self,action: #selector(lbsJump),for:UIControl.Event.touchUpInside)
        
        
        // 消息推送
        let pushButton = UIButton(type: UIButton.ButtonType.system)
        pushButton.frame = CGRect(x: 60,y: 370,width: 300,height: 50)
        pushButton.setTitle("消息推送", for: UIControl.State())
        pushButton.backgroundColor = UIColor.orange
        pushButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(pushButton)//把button添加到当前视图
        pushButton.addTarget(self,action: #selector(pushJump),for:UIControl.Event.touchUpInside)
                
        
    }
    
    @objc func cdpJump() {
        print("用户点击了 cdpJump 按钮")
        let cdpView = CdpViewController();
        self.navigationController?.pushViewController(cdpView, animated: false)
    }
    
    @objc func hotfixJump() {
        print("用户点击了 hotfixJump 按钮")
        let hotfixView = HotfixViewController();
        self.navigationController?.pushViewController(hotfixView, animated: false)
    }
    
    @objc func rtcJump() {
        print("用户点击了 rtcJump 按钮")
        let rtcView = RtcViewController();
        self.navigationController?.pushViewController(rtcView, animated: false)
    }
    
    
    @objc func lbsJump() {
        print("用户点击了 定位lbsClick 按钮")
        let lbsView = LbsViewController();
        self.navigationController?.pushViewController(lbsView, animated: false)
    }
    
    @objc func pushJump() {
        print("用户点击了 pushJump 按钮")
        let pushView = PushViewController();
        self.navigationController?.pushViewController(pushView, animated: false)
    }


}
