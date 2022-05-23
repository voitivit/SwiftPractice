//
//  ModelTestUser.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 30.03.2022.
//

import Foundation
import RealmSwift


// Можно пометить @objcMembers - чтобы не писать objc перед переменными 
@objcMembers
class TestUser: NSObject {
     dynamic var name: String = ""
     dynamic var age: Int = 0
    
    
    //Это строка вносит ясность при принте во VC , то есть выведет : Name - Emil, Age - 0
    override var description: String {
        return "name: \(name), age: \(age)"
    }
}







