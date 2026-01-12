//
//  WorkoutCalendarApp.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import SwiftUI
import CoreData

@main
struct WorkoutCalendarApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
