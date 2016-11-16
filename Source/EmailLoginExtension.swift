//
//  EmailLoginExtension.swift
//  EmailLoginExtension
//
//  Created by Vlad Getman on 31.05.16.
//  Copyright © 2016 Vlad Getman. All rights reserved.
//

import Foundation
import HILoginManager

open class EmailLoginExtension: NSObject {
    
}

extension EmailLoginExtension: LoginProtocol {
    
    public func request(_ completion: @escaping LoginCompletion) {
        //It's not necessary, just use a login/sign up screens
    }
    
    public func authType() -> AuthType {
        return .email
    }
    
    public func authDataFromResponse(_ response: Any) -> [String : Any] {
        return response as! [String : AnyObject]
    }
    
    public func reset() {
        
    }
}
