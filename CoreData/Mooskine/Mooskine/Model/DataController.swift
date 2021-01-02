//
//  DataController.swift
//  Mooskine
//
//  Created by yusef naser on 12/29/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import CoreData

class DataController {
    
    let persistanceContainer : NSPersistentContainer
    
    var viewContext : NSManagedObjectContext {
        persistanceContainer.viewContext
    }
    
    init(modelName : String) {
        persistanceContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion : ( ()->Void )? = nil ) {
        persistanceContainer.loadPersistentStores { (description, error) in
            guard error == nil else {
                return
            }
            self.autoSaveViewContext(interval: 3)
            completion?()
        }
    }
    
}

extension DataController {
    
    func autoSaveViewContext (interval : TimeInterval = 30 ) {
        print("auto save")
        guard interval > 0 else {
            print("can't set negative")
            return
        }
        if viewContext.hasChanges {
            try? viewContext.save()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
            self.autoSaveViewContext(interval: interval )
        }
    }
    
}
