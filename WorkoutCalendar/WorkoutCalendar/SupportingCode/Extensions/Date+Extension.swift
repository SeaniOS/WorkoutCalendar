//
//  Date+Extension.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation

extension Date {
    enum DateFormat: String {
        case MMddyyyy = "MM-dd-yyyy"
    }
}

extension Date {
    func stringValue(dateFormatCase: DateFormat) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormatCase.rawValue

        return formatter.string(from: self)
    }
}
