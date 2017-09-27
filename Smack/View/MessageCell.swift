//
//  MessageCell.swift
//  Smack
//
//  Created by Nomad on 9/27/17.
//  Copyright © 2017 ios.Nomad. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var profileImg: CurcleImage!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var timeStamp: UILabel!
    @IBOutlet weak var messageBodyText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(message: Message) {
        messageBodyText.text = message.message
        timeStamp.text = message.timeStamp
        userName.text = message.userName
        profileImg.image = UIImage(named: message.userAvatar)
        profileImg.backgroundColor = UserDataServece.instance.returnUIColor(components: message.userAvatarColor)
    }

}
