//
//  SwitchInterfaceController.swift
//  MyWatch_Swift
//
//  Created by huangshuimei on 16/1/31.
//  Copyright © 2016年 huangshuimei. All rights reserved.
//

import WatchKit
import Foundation



class SwitchInterfaceController: WKInterfaceController {
    @IBAction func switchClick(value: Bool) {
        print("\(value)")
    }
    @IBOutlet var switchView: WKInterfaceSwitch!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
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