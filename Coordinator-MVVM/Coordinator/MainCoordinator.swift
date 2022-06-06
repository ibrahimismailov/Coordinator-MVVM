//
//  MainCoordinator.swift
//  Coordinator-MVVM
//
//  Created by Abraam on 06.06.2022.
//

import UIKit
class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func events(with type: Events) {
        switch type {
        case .rightButtonTapped:
            var vc: UIViewController & Coordinating = addEventViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        var viewController: UIViewController & Coordinating = EventListViewController()
        viewController.coordinator = self
        navigationController?.setViewControllers([viewController], animated: false)
    }
    
   
  
}
