//
//  Model.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 18.02.2022.
//

import Foundation
import RealmSwift

class Info: Object, Decodable {
  @objc dynamic var id: Int
    @objc dynamic var name: String
    @objc dynamic var username: String
    @objc dynamic var email: String
    @objc dynamic var address: Address?
    @objc dynamic var phone: String
    @objc dynamic var website: String
    @objc dynamic var company: Company?
}

class Address: Object, Decodable {
    @objc dynamic var street: String
    @objc dynamic var suite: String
    @objc dynamic var city: String
    @objc dynamic var zipcode: String
    @objc dynamic var geo: Geo?
}
class Geo: Object, Decodable {
    @objc dynamic var latitude: String
    @objc dynamic var longitude: String
    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lng"
    }
}

class Company: Object, Decodable {
    @objc dynamic var name: String
    @objc dynamic  var catchPhrase: String
    @objc dynamic  var bs: String
}
