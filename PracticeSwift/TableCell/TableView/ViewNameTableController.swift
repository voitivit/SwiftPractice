//
//  ViewNameTableController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 23.05.2022.
//

import UIKit
class ViewNameTableController: UIViewController {
    let arrayName = ["Милана", "Вероника", "Ирина", "Эмиль", "Бонита"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
    }
    
}

extension ViewNameTableController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? NameTableViewCell else {
            return UITableViewCell()
        }
        
        cell.labelName.text = arrayName[indexPath.row]
        return cell
    }
    
    
}
