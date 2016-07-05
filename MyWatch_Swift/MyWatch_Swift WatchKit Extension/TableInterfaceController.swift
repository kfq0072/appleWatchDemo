//
//  TableInterfaceController.swift
//  MyWatch_Swift
//
//  Created by huangshuimei on 16/2/1.
//  Copyright © 2016年 huangshuimei. All rights reserved.
//

import WatchKit
import Foundation



class TableInterfaceController: WKInterfaceController {
@IBOutlet var Table: WKInterfaceTable!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let dic:Dictionary<String,String> = ["中国建设银行":"￥1000","中国农业银行":"￥5000","中国银行":"20000","招商银行":"￥401","中国邮政储蓄":"1100"]
        //设置行数与类型
        Table.setNumberOfRows(dic.count, withRowType: "TableRowController")
        //遍历进行设置
        let titleArray:Array<String> = Array(dic.keys)
        for var i=0 ; i < dic.count ; i++ {
            let row:TableRowController = Table.rowControllerAtIndex(i) as! TableRowController
            row.bank.setText(titleArray[i])
            row.menoy.setText(dic[titleArray[i]])
            row.menoy.setTextColor(UIColor.grayColor())
        }
        // Configure interface objects here.
    }
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        print("\(table) \(rowIndex)")
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
