//
//  PurchaseWindow.swift
//  Galactic Smuggler
//
//  Created by Brian Kasper on 3/16/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

import UIKit

class PurchaseWindow: UIView
{
    var lessButton: UIButton = {
        
    };
    var item: Item;
    var moreButton: UIButton;
    
    init(frame: CGRect, item: Item)
    {
        self.item = item;
        super.init(frame: frame);
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
}
