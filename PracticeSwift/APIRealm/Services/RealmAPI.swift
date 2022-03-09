//
//  RealmAPI.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 09.03.2022.
//

import Foundation
import RealmSwift

class RealmAPI {
    func getRealm(_ model: [Info]){
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
