//
//  ProfileVC.swift
//  Smack
//
//  Created by Nomad on 9/13/17.
//  Copyright © 2017 ios.Nomad. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    //Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileEmail: UILabel!
    @IBOutlet weak var background: UIView!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func logoutPressed(_ sender: Any) {
        UserDataServece.instance.loguotUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        profileImg.image = UIImage(named: UserDataServece.instance.avatarName)
        profileName.text = UserDataServece.instance.name
        profileEmail.text = UserDataServece.instance.email
        profileImg.backgroundColor = UserDataServece.instance.returnUIColor(components: UserDataServece.instance.avatarColor)
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_:)))
        background.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ revognizer : UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
