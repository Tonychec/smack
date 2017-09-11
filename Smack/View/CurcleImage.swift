//
//  CurcleImage.swift
//  Smack
//
//  Created by Nomad on 9/11/17.
//  Copyright © 2017 ios.Nomad. All rights reserved.
//

import UIKit

@IBDesignable
class CurcleImage: UIImageView {
 
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
