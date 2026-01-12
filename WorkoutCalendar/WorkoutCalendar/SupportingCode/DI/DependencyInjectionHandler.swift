//
//  DependencyInjectionHandler.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation

protocol DependencyInjection {
    
}

class DependencyInjectionHandler: DependencyInjection {
}

// MARK: - Workouts
extension DependencyInjectionHandler {
    func makeWorkoutsUsecase() -> WorkoutsUseCase {
        let workoutsRepository = makeWorkoutsRepository()
        return DefaultWorkoutsUseCase(workoutsRepository: workoutsRepository)
    }
    
    private func makeWorkoutsRepository() -> WorkoutsRepository {
        return DefaultWorkoutsRepository()
    }
}
