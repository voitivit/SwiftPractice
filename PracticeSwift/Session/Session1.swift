//
//  Session1.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 11.05.2022.
//

import Foundation
struct Sessions {
 
     private init() {
         self.token = String()
         self.userID = Int()
     }

     var token: String
     var userID: Int

     static var session = Sessions()
 }
