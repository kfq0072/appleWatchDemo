//
//  MovieInterfaceController.swift
//  MyWatch_Swift
//
//  Created by huangshuimei on 16/1/31.
//  Copyright © 2016年 huangshuimei. All rights reserved.
//

import WatchKit
import Foundation


class MovieInterfaceController: WKInterfaceController {
    @IBOutlet var movie: WKInterfaceMovie!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        initMove()
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
    
    func initMove(){
        let myBundle = NSBundle.mainBundle()
        let movieURL = myBundle.URLForResource("mv", withExtension: "mov")
        if (movieURL != nil) {
            self.movie.setMovieURL(movieURL!)
            
            self.presentMediaPlayerControllerWithURL(movieURL!, options: [WKMediaPlayerControllerOptionsAutoplayKey: true], completion: {(didPlayToEnd : Bool,
                endTime : NSTimeInterval,
                error : NSError?) -> Void in
                if let anErrorOccurred = error {
                    // Handle the error.
                }
                // Perform other tasks
            })
        
        }
        
    }

}
