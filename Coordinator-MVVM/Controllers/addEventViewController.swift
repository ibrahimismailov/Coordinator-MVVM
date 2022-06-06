//
//  SecondViewController.swift
//  Coordinator-MVVM
//
//  Created by Abraam on 06.06.2022.
//

import UIKit

class addEventViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Add-Event"
    }
    



}
