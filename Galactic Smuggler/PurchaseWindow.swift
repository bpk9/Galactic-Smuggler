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
    // view elements
    @IBOutlet var lessButton: UIButton!
    @IBOutlet var itemPicture: UIImageView!
    @IBOutlet var itemPrice: UILabel!
    @IBOutlet var moreButton: UIButton!
    @IBOutlet var itemCount: UILabel!
    
    // other variables
    var itemCounter: Int = 0;
    
    init(frame: CGRect, item: Item)
    {
        super.init(frame: frame);
        loadUI(item: item);
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    
    
    
    // init function
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "PurchaseWindow", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    
    // load UI elements
    func loadUI(item: Item)
    {
        self.itemPicture.image = item.getImage();
        self.itemPrice.text = String(item.getPrice());
    }
    
    // called when more button is clicked
    @IBAction func moreButtonAction(_ sender: Any)
    {
        addItem();
    }
    
    // called when less button is clicked
    @IBAction func lessButtonAction(_ sender: Any)
    {
        removeItem();
    }
    
    func addItem() {
        itemCounter += 1;
        self.itemCount.text = String(itemCounter);
        self.lessButton.isHidden = false;
    }
    
    func removeItem() {
        if(itemCounter > 1)
        {
            itemCounter -= 1;
            self.itemCount.text = String(itemCounter);
            if (itemCounter == 0) { self.lessButton.isHidden = true; }
        }
        else
        {
            // no-op
        }
    }
    
}
