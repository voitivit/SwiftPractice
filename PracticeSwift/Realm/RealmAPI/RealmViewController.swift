//
//  RealmViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 22.03.2022.
//

import UIKit
import RealmSwift

class RealmViewController: UIViewController {
    let realmModel = RealmModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        getRealmModel()
    }
    func getRealmModel(){
        realmModel.name = "Emil"
        realmModel.surname = "Kurbanov"
        realmModel.age = 35
        realmModel.companyName?.nameCompany = "MailGroup"
        realmModel.companyName?.emailCompany = "Kurbanov_Emil@mailGroup.ru"
        
        do {
            let realm = try Realm()
            realm.beginWrite()
            realm.add(realmModel)
            try realm.commitWrite()
            print(realm.configuration.fileURL as Any)
        } catch  {
            print(error)
        }
    }
}
