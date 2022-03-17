//
//  API.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 14.03.2022.
//

import UIKit
import Alamofire
//https://jsonplaceholder.typicode.com/users
let info = [Info].self
class API{
    let realm = APIRealm()
    func getAPI(completion: @escaping ([Info]) -> Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        AF.request(url).responseData { response in
            guard let data = response.data else {return}
            
            do {
                let json = try JSONDecoder().decode(info, from: data)
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
