//
//  WorkoutsRepository.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation

protocol WorkoutsRepository {
    func fetchWorkouts() async throws -> WorkoutsResponse
}
