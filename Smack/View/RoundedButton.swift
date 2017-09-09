//
//  RoundedButton.swift
//  Smack
//
//  Created by Nomad on 9/9/17.
//  Copyright © 2017 ios.Nomad. All rights reserved.
//

import UIKit
@IBDesignable //to see changes in storyboadr
class RoundedButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.setupView()
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}
