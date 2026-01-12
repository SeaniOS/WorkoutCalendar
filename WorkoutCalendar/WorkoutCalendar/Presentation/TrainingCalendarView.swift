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
            listView
        }
        .onAppear(perform: viewModel.onAppear)
    }
}

extension TrainingCalendarView {
    var listView: some View {
        List {
            ForEach(viewModel.trainingDays) { trainingDay in
                VStack(alignment: .leading) {
                    itemView(trainingDay)
                }
            }
        }
    }
    
    func itemView(_ trainingDay: DayData) -> some View {
        HStack {
            VStack(alignment: .leading) {
                Text("MON")
                    .font(AppFonts.OpenSans.bold(size: 12))
                    .lineSpacing(8) // ~line height: 20
                    .tracking(0.3) // letter spacing
                    .foregroundStyle(AppColors.gray7B7E91)
                
                Text("20")
                    .font(AppFonts.OpenSans.regular(size: 16))
                    .lineSpacing(8)
                    .foregroundStyle(AppColors.defaultColor)
            }
            VStack(alignment: .leading) {
                Text("Legs day")
                    .font(AppFonts.OpenSans.bold(size: 15))
                    .foregroundStyle(AppColors.defaultColor)
                
                HStack {
                    Text("Missed")
                        .foregroundStyle(Color.red)
                    Text("•")
                    Text("5 exercises")
                }
                .font(AppFonts.OpenSans.regular(size: 13))
                .foregroundStyle(AppColors.defaultColor)
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 15, trailing: 18))
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(AppColors.backgroundGrayF7F8FC)
            )
        }
    }
    
    /*
    func dateString(trainingDay: DayData) -> String {
        guard let date = trainingDay.date.toDate() else { return "" }
        return date.stringValue(dateFormatCase: .MMddyyyy)
    }
    */
}

#Preview {
    let diHandler = DependencyInjectionHandler()
    let viewModel = diHandler.makeTrainingCalendarViewModel()
    TrainingCalendarView(viewModel: viewModel)
}
