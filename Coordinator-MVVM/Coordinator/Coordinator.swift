//
//  Coordinator.swift
//  Coordinator-MVVM
//
//  Created by Abraam on 06.06.2022.
//

import Foundation
import UIKit
enum Events {
    case rightButtonTapped
}
protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    func events(with type: Events)
    func start()
    
}
protocol Coordinating {

    var coordinator: Coordinator? { get set }
    


}
