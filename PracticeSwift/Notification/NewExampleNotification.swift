//
//  NewExampleNotification.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 28.03.2022.
//

import UIKit
import Combine
class NewExampleNotification: UIViewController {
    
    
    @IBOutlet weak var makePostButton: UIButton!
    @Published var canBeMakePost: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        $canBeMakePost.receive(on: DispatchQueue.main).assign(to: \.isEnabled, on: makePostButton)
    }
    
    @IBAction func makeButton(_ sender: UIButton) {
       // canBeMakePost = sender.isOn
    }
    
    @IBAction func toggleSwitch(_ sender: UISwitch) {
        canBeMakePost = sender.isOn
    }
    
}
