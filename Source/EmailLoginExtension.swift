//
//  EmailLoginExtension.swift
//  EmailLoginExtension
//
//  Created by Vlad Getman on 31.05.16.
//  Copyright © 2016 Vlad Getman. All rights reserved.
//

import Foundation
import HILoginManager
import SwiftyUserDefaults
import KeychainSwift

open class EmailLoginExtension: NSObject {
    
}

extension EmailLoginExtension: LoginProtocol {
    
    public func request(_ completion: @escaping LoginCompletion) {
        //It's not necessary, just use a login/sign up screens
    }
    
    public func authType() -> AuthType {
        return .email
    }
    
    public func hasAuthData() -> Bool {
        return (Defaults["Email"].stringValue.characters.count > 0 && KeychainSwift().get("Password") != nil)
    }
    
    public func authData() -> [String : Any] {
        let email = Defaults["Email"].stringValue
        let password = KeychainSwift().get("Password")
        return ["email" : email, "password": password!]
    }
    
    public func authDataFromResponse(_ response: Any) -> [String : Any] {
        return response as! [String : AnyObject]
    }
    
    public func save(_ response: Any) {
        let parameters = response as! [String : Any]
        Defaults["Email"] = parameters["email"]
        KeychainSwift().set(parameters["password"] as! String, forKey: "Password")
    }
    
    public func reset() {
        Defaults.remove("Email")
    }
}
