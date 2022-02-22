//
//  ModelRealm.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 22.02.2022.
//

import Foundation
import RealmSwift
class MyFamily: Object, Decodable {
   @objc dynamic var name = ["Вероника", "Милана", "Эмиль", "Ирина"]
   @objc dynamic var age = [11,35,34,5]
}
