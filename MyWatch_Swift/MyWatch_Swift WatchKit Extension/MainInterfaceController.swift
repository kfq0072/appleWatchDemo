//
//  MainInterfaceController.swift
//  MyWatch_Swift
//
//  Created by huangshuimei on 16/2/8.
//  Copyright © 2016年 huangshuimei. All rights reserved.
//

import WatchKit
import Foundation

enum VCType {
    case Alerts
    case Picker
    case Menu
    case Notifcation
}

class MainInterfaceController: WKInterfaceController {
    @IBOutlet var MainTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        initMainTable()
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        switch rowIndex{
        case 0:
            self.pushControllerWithName("Alerts", context: nil)
        case 1:
            self.pushControllerWithName("Pickers", context: nil)
        case 2:
            self.pushControllerWithName("Menus", context: nil)
        case 3:
            self.pushControllerWithName("Notifcations", context: nil)
        case 4:
            self.pushControllerWithName("Tables", context: nil)
            
        default:
            print("plsease didselect right num")
        }
    }
    
    func initMainTable(){
        let titleArray:NSArray = ["Alerts","Pickers","Menus","Notifcations","Tables"]
        MainTable.setNumberOfRows(titleArray.count, withRowType: "MainRowController")
        for var i = 0;i < titleArray.count;i++ {
            let row:MainRowController = MainTable.rowControllerAtIndex(i) as!MainRowController
            row.UITitle.setText(titleArray[i] as? String)
        }
        
    }

}
