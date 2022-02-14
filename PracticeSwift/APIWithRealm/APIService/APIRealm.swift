//
//  APIRealm.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 13.02.2022.
//

import Foundation
import RealmSwift
class APIRealm{
    func getAPIRealm(_ model: [User]){
        do {
            let realm = try Realm()
            realm.beginWrite()
            realm.add(model)
            try realm.commitWrite()
            print(realm.configuration.fileURL as Any)
        } catch  {
            print(error)
        }
    }
}
