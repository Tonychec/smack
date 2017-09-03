//
//  ChannelVC.swift
//  Smack
//
//  Created by Nomad on 9/3/17.
//  Copyright © 2017 ios.Nomad. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepereForUnwind(seque: UIStoryboardSegue){}

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
