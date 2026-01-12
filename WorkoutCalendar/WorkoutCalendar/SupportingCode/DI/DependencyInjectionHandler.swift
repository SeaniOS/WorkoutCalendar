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

extension DependencyInjectionHandler {
    func makeTrainingCalendarViewModel() -> DefaultTrainingCalendarViewModel {
        let workoutsUseCase = makeWorkoutsUseCase()
        return DefaultTrainingCalendarViewModel(workoutsUseCase: workoutsUseCase)
    }
}

// MARK: - Workouts
extension DependencyInjectionHandler {
    private func makeWorkoutsUseCase() -> WorkoutsUseCase {
        let workoutsRepository = makeWorkoutsRepository()
        return DefaultWorkoutsUseCase(workoutsRepository: workoutsRepository)
    }
    
    private func makeWorkoutsRepository() -> WorkoutsRepository {
        return DefaultWorkoutsRepository()
    }
}
