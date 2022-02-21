//
//  API.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 18.02.2022.
//

import Foundation
import Alamofire
let info = [Info].self
class API {
    let realmApi = APIWithRealm()
    func getAPI(completion: @escaping ([Info]) -> Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        AF.request(url).responseData { response in
            guard let data = response.data else {return}
            do {
                let json = try JSONDecoder().decode(info, from: data)
                DispatchQueue.main.async {
                    self.realmApi.getAPIRealm(json)
                    completion(json)
                }
            } catch  {
                print(error)
            }
        }
    }
}
