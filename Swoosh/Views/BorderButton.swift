//
//  BorderButton.swift
//  Swoosh
//
//  Created by Aarti Chella on 5/1/18.
//  Copyright © 2018 aarti. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
