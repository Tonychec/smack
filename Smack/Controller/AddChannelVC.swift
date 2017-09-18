//
//  AddChannelVC.swift
//  Smack
//
//  Created by Nomad on 9/14/17.
//  Copyright © 2017 ios.Nomad. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {

    
    //Outlets
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
        
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor : SMACK_PURPLE_PLACEHOLDER])
        chanDesc.attributedPlaceholder = NSAttributedString(string: "descriptoin", attributes: [NSAttributedStringKey.foregroundColor : SMACK_PURPLE_PLACEHOLDER])
    }
    
    @objc func closeTap(_ recogniser: UIGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
