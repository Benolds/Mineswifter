//
//  Square.swift
//  Mineswifter
//
//  Created by Benjamin Reynolds on 7/21/14.
//  Copyright (c) 2014 MakeGamesWithUs. All rights reserved.
//

import Foundation
import UIKit

class Square: UIButton {
    
    var isBombLocation = false
    var row:Int = 0
    var col:Int = 0
    let squareSize = 30
    let margin = 5
    
    init(row:Int, col:Int, isBombLocation:Bool) {
        let x:CGFloat = CGFloat(col) * CGFloat(30 + margin)
        let y:CGFloat = CGFloat(row) * CGFloat(30 + margin)
        let squareFrame = CGRectMake(x, y, 30, 30)
        super.init(frame: squareFrame)
        self.row = row
        self.col = col
        self.isBombLocation = isBombLocation
        self.setTitle("[ ]", forState: .Normal)
    }
    
}