//
//  CollectionViewCell.swift
//  didSelectItemAt
//
//  Created by Terry Lee on 2/22/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = "hihi"
    }
    
    
    
    @IBAction func tapHandler(_ sender: UIButton) {
        print("button is clicked")
    }
}
