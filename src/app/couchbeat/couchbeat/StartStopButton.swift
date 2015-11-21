//
//  StartStopButton.swift
//  couchbeat
//
//  Created by Stephen Butler on 11/21/15.
//  Copyright © 2015 com.stephbu. All rights reserved.
//

import Foundation
import UIKit

class StartStopButton : UIButton {
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(ovalInRect: rect)
        UIColor.greenColor().setFill()
        path.fill()
    }
}
