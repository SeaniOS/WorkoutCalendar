//
//  TrainingCalendarView.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import SwiftUI

struct TrainingCalendarView<ViewModel: TrainingCalendarViewModel>: View {
    @StateObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            list
        }
        .onAppear(perform: viewModel.onAppear)
    }
}

extension TrainingCalendarView {
    var list: some View {
        List {
            ForEach(viewModel.trainingDays) { trainingDay in
                VStack(alignment: .leading) {
                    Text("id: \(trainingDay.id)")
                    Text("day: \(trainingDay.day)")
                    Text("date: \(dateString(trainingDay: trainingDay))")
                }
            }
        }
    }
    
    func dateString(trainingDay: DayData) -> String {
        guard let date = trainingDay.date.toDate() else { return "" }
        return date.stringValue(dateFormatCase: .MMddyyyy)
    }
}

#Preview {
    let diHandler = DependencyInjectionHandler()
    let viewModel = diHandler.makeTrainingCalendarViewModel()
    TrainingCalendarView(viewModel: viewModel)
}
