//
//  SecondCollectionViewCell.swift
//  didSelectItemAt
//
//  Created by Terry Lee on 2/22/21.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = "hihi"
    }
}
