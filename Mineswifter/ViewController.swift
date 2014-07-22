//
//  ViewController.swift
//  Mineswifter
//
//  Created by Benjamin Reynolds on 7/21/14.
//  Copyright (c) 2014 MakeGamesWithUs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 2d list of tiles
    var _tiles:Square[][] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let NUM_ROWS = 6
        let NUM_COLS = 6
        
        for row in 0..NUM_ROWS {
            for col in 0..NUM_COLS {
                
                let square = Square(row: row, col: col, isBombLocation: true)
                square.setTitle("[  ]", forState: .Normal)
                square.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
                square.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
                self.view.addSubview(square)
                
            }
        }
        
        
        
//        let myFirstButton = UIButton()
//        myFirstButton.setTitle("[  ]", forState: .Normal)
//        myFirstButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
//        myFirstButton.frame = CGRectMake(15, -50, 300, 500)
//        myFirstButton.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
//        self.view.addSubview(myFirstButton)
        
        
    }
    
    func pressed(sender: UIButton!) {
        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "title";
        alertView.message = "message";
        alertView.show();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedOnButton(sender : AnyObject) {
        println("tapped on button", sender.tag)
        sender.set
        
    }

}

