//
//  RealmModel.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 22.03.2022.
//

import Foundation
import RealmSwift
class RealmModel: Object, Decodable {
   @objc dynamic var name: String
    @objc dynamic var surname: String
    @objc dynamic var age: Int
    @objc dynamic var companyName: CompanyName!
}
class CompanyName: Object, Decodable {
   @objc dynamic var nameCompany: String
    @objc dynamic var emailCompany: String
}
