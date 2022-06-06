//
//  ViewController.swift
//  Coordinator-MVVM
//
//  Created by Abraam on 06.06.2022.
//

import UIKit
import CoreData
class EventListViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "🖊"
        navigationController?.navigationBar.prefersLargeTitles = true
        makeRightBarButton()
        
     

    }
    private func makeRightBarButton () {
        let rightBurButton = UIBarButtonItem(image: UIImage(systemName: "plus.app.fill"), style: .done, target: self, action: #selector(rightButtonTapped))
        navigationItem.rightBarButtonItem = rightBurButton
    }
    @objc func rightButtonTapped() {
        coordinator?.events(with: .rightButtonTapped)
    }


}

