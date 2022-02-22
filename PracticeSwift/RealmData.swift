//
//  RealmData.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 22.02.2022.
//

import UIKit
import RealmSwift
class RealmData: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        func getRealmData(_ model: [MyFamily]){
            do {
                let realm = try Realm()
                realm.beginWrite()
                 
                realm.add(model)
                try realm.commitWrite()
               // print(realm.configuration.fileURL as Any)
            } catch  {
                print(error)
            }
        }
    }
}
