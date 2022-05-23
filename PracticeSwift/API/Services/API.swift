//
//  API.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 14.03.2022.
//

import UIKit
import Alamofire
//https://jsonplaceholder.typicode.com/users
let user = [User].self
class API {
    let realm = RealmAPI()
    func getAPI(completion: @escaping([User]) -> Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        AF.request(url).response { response in
            guard let data = response.data else {return}
            
            do {
                let json = try JSONDecoder().decode(user, from: data)
                DispatchQueue.main.async {
                    self.realm.realmAPI(json)
                    completion(json)
                }
            } catch  {
                print(error)
            }
        }
    }
}
