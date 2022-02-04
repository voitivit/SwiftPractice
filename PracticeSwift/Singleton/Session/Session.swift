//
//  Session.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 04.02.2022.
//

import Foundation
class Session {
    static let shared = Session()
    private init() {}
    
    var name = ""
    var surname = ""
}
