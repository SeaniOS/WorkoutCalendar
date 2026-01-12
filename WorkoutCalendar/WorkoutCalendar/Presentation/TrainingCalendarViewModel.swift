//
//  TrainingCalendarViewModel.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation
import Combine

protocol TrainingCalendarViewModel: ObservableObject {
    func onAppear()
    var trainingDays: [DayData] { get }
}

class DefaultTrainingCalendarViewModel: TrainingCalendarViewModel {
    private let workoutsUseCase: WorkoutsUseCase
    @Published var trainingDays: [DayData] = []
    
    init(workoutsUseCase: WorkoutsUseCase) {
        self.workoutsUseCase = workoutsUseCase
    }
    
    func onAppear() {
        Task {
            do {
                let workoutsResponse = try await workoutsUseCase.fetchWorkouts()
                
                DispatchQueue.main.async { [weak self] in
                    guard let self else { return }
                    self.trainingDays = workoutsResponse.trainingDays
                }
                
            } catch {
                myPrint(error.localizedDescription)
            }
        }
    }
}
