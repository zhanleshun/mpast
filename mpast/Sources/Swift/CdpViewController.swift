//
//  智能投放
//  mpast
//
//  Created by 詹乐顺 on 2020/12/23.
//  Copyright © 2020 Alibaba. All rights reserved.
//

import Foundation

@objc class CdpViewController: UIViewController {
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // 智能投放
        let bannerButton = UIButton(type: UIButton.ButtonType.system)
        bannerButton.frame = CGRect(x: 60,y: 90,width: 300,height: 50)
        bannerButton.setTitle("Banner投放", for: UIControl.State())
        bannerButton.backgroundColor = UIColor.orange
        bannerButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(bannerButton)//把button添加到当前视图
        bannerButton.addTarget(self,action: #selector(bannerClick),for:UIControl.Event.touchUpInside)
        
        // 投屏投放
        let windowButton = UIButton(type: UIButton.ButtonType.system)
        windowButton.frame = CGRect(x: 60,y: 160,width: 300,height: 50)
        windowButton.setTitle("投屏投放", for: UIControl.State())
        windowButton.backgroundColor = UIColor.orange
        windowButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(windowButton)//把button添加到当前视图
        windowButton.addTarget(self,action: #selector(windowClick),for:UIControl.Event.touchUpInside)
        
        
        // 返回
        let rtnButton = UIButton(type: UIButton.ButtonType.system)
        rtnButton.frame = CGRect(x: 60,y: 230,width: 300,height: 50)
        rtnButton.setTitle("返回", for: UIControl.State())
        rtnButton.backgroundColor = UIColor.orange
        rtnButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(rtnButton)//把button添加到当前视图
        rtnButton.addTarget(self,action: #selector(rtnClick),for:UIControl.Event.touchUpInside)
        
    }
    
    
    @objc func bannerClick(){
        print("CdpViewController bannerClick... ",Date())
        
    }
    
    @objc func windowClick(){
        print("CdpViewController windowClick... ",Date())
        
    }
    
    @objc func rtnClick(){
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

