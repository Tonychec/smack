//
//  Constants.swift
//  Smack
//
//  Created by Nomad on 9/3/17.
//  Copyright © 2017 ios.Nomad. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://testchatapi.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

// Seques
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIDE = "unwindeToChannel"


// User defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
