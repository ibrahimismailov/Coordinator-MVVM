//
//  CoreDataManager.swift
//  Coordinator-MVVM
//
//  Created by Abraam on 06.06.2022.
//


import UIKit
import CoreData
//extension EventListViewController {
final class CoreDataManager {
    
    
    func save(name: String, date: Date, image: UIImage) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let contex = appDelegate.persistentContainer.viewContext
            guard let entityDescription = NSEntityDescription.entity(forEntityName: "Event", in: contex) else {return}
            let newValue = NSManagedObject(entity: entityDescription, insertInto: contex)
            newValue.setValue(name, forKey: "name")
             let imageData = image.jpegData(compressionQuality: 1)
            newValue.setValue(imageData, forKey: "image")
            newValue.setValue(date, forKey: "date")
                
            do {
                try contex.save()
                print("saved: \(newValue)")
            } catch {
                print("Error")
            }
        }
    }
    func retrieveValue() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let contex = appDelegate.persistentContainer.viewContext
            let fetchRequest =  NSFetchRequest<Event>(entityName: "Event")
            do {
                let results = try contex.fetch(fetchRequest)
                for result in results {
                    print(result)
                }
         
            } catch {
                print("Error")
            }
        }
    }
}
