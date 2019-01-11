//
//  Calories+convenience.swift
//  CalorieTracker-SwiftChart
//
//  Created by Yvette Zhukovsky on 1/11/19.
//  Copyright © 2019 Yvette Zhukovsky. All rights reserved.
//
import CoreData
import Foundation


extension Calories {
    convenience init(timestamp: Date = Date(), number: Int32, context: NSManagedObjectContext = CoreDataStack.shared.mainContext ){
        self.init(context: context)
        self.timestamp = timestamp
        self.number = number
    }
    
    convenience init?(CalorieModel: CalorieModel, context: NSManagedObjectContext){
        self.init(timestamp: CalorieModel.timestamp, number: Int32(CalorieModel.number), context: context)
    }
    
}
