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
  private let coreDataManager = CoreDataManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "🖊"
        navigationController?.navigationBar.prefersLargeTitles = true
        makeRightBarButton()
        guard let image = UIImage(named: "ntfl") else {return}
        coreDataManager.save(name: "Netflix", date: Date(), image: image)
        
        
     

    }
    private func makeRightBarButton () {
        let rightBurButton = UIBarButtonItem(image: UIImage(systemName: "plus.app.fill"), style: .done, target: self, action: #selector(rightButtonTapped))
        navigationItem.rightBarButtonItem = rightBurButton
    }
    @objc func rightButtonTapped() {
        coordinator?.events(with: .rightButtonTapped)
    }


}

