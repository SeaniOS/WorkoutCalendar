//
//  WorkoutsUseCase.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation

protocol WorkoutsUseCase {
    func fetchWorkouts() async throws -> WorkoutsResponse
}

final class DefaultWorkoutsUseCase: WorkoutsUseCase {
    private let workoutsRepository: WorkoutsRepository
    
    init(workoutsRepository: WorkoutsRepository) {
        self.workoutsRepository = workoutsRepository
    }
    
    func fetchWorkouts() async throws -> WorkoutsResponse {
        return try await workoutsRepository.fetchWorkouts()
    }
}
