//
//  View1.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 20.03.2022.
//

import UIKit
class ViewOne: UIViewController {
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var labelOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        buttonOne.addTarget(self, action: #selector(clickButtonOne), for: .touchUpInside)
    }
    @objc func clickButtonOne(){
        view.backgroundColor = .red
        labelOne.text = "Привет!"
    }
}
