//
//  MenuInterfaceController.swift
//  MyWatch_Swift
//
//  Created by huangshuimei on 16/1/31.
//  Copyright © 2016年 huangshuimei. All rights reserved.
//

import WatchKit
import Foundation



class MenuInterfaceController: WKInterfaceController {
    var image:UIImage!
    @IBAction func menuClick() {
        print("hello");
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.addMenuItemWithItemIcon(WKMenuItemIcon.Share, title: "分享", action:Selector("share"))
//        self.addMenuItemWithItemIcon(WKMenuItemIcon.Decline, title: "取消", action: Selector("cancle"))
//        self.addMenuItemWithItemIcon(WKMenuItemIcon.Add, title: "添加", action:Selector("add"))
    }
    
    func share(){
        print("分享")
    }
    func add(){
        print("add")
    }
    func cancle(){
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
