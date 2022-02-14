//
//  API.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 13.02.2022.
//

import Foundation
import Alamofire
import RealmSwift
//https://jsonplaceholder.typicode.com/users
let user = [User].self
class API {
    let realm = APIRealm()
    func getAPI(completion: @escaping ([User]) -> Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        AF.request(url).responseData { response in
            guard let data = response.data else  {return}
            do {
                let json = try JSONDecoder().decode(user, from: data)
                DispatchQueue.main.async {
                    self.realm.getAPIRealm(json)
                    completion(json)
                }
            } catch  {
                print(error)
            }
        }
    }
}
