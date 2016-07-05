//
//  AlertsInterfaceController.swift
//  MyWatch_Swift
//
//  Created by huangshuimei on 16/1/31.
//  Copyright © 2016年 huangshuimei. All rights reserved.
//

import WatchKit
import Foundation


class AlertsInterfaceController: WKInterfaceController {
    @IBAction func alertClick() {
        showAlert()
    }
    @IBAction func sideAlertClick() {
        showPopup()
    }
    @IBAction func popClick() {
        showPopup()
    }
    func showAlert() {
        let h0 = { print("ok")}
        
        let action1 = WKAlertAction(title: "Approve", style: .Default, handler:h0)
        let action2 = WKAlertAction(title: "Decline", style: .Destructive) {}
        let action3 = WKAlertAction(title: "Cancel", style: .Cancel) {}
        
        presentAlertControllerWithTitle("Voila", message: "", preferredStyle: .Alert, actions: [action1, action2,action3])

    }
    
    func showPopup(){
        
        let h0 = { print("ok")}
        
        let action1 = WKAlertAction(title: "Approve", style: .Default, handler:h0)
        let action2 = WKAlertAction(title: "Decline", style: .Destructive) {}
        let action3 = WKAlertAction(title: "Cancel", style: .Cancel) {}
        
        presentAlertControllerWithTitle("Voila", message: "", preferredStyle: .ActionSheet, actions: [action1, action2,action3])
        
        
    }

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
