//
//  InfoViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 13.02.2022.
//

import UIKit
class InfoViewController: UIViewController {
    var user: [User] = []
    let api = API()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        api.getAPI {[weak self] userInfo in
            guard let self = self else {return}
            self.user = userInfo
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        tableView.dataSource = self
    }
}
extension InfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = user[indexPath.row].website
        return cell
    }
    
    
}


//https://jsonplaceholder.typicode.com/users
