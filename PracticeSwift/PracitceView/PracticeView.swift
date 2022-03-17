//
//  PracticeView.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 14.03.2022.
//

import UIKit
import Foundation
class PracticeView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        print("viewDidLoad:😝 ")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let timer =  Timer.scheduledTimer(withTimeInterval: 4.5, repeats: true) { Timer in
            self.view.backgroundColor = .yellow
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .green
        print("viewDidAppear:😝 ")
    }
    
}

