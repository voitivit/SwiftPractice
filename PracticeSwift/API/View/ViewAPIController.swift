//
//  ViewAPIController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 14.03.2022.
//

import UIKit
class ViewAPIController: UIViewController {
    var user: [User] = []
    let api = API()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        api.getAPI {[weak self] userResponse in
            guard let self = self else {return}
            self.user = userResponse
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        tableView.dataSource = self
     
}

}
extension ViewAPIController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = user[indexPath.row].email
        return cell
    }
    
    
}
