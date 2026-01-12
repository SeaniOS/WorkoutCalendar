//
//  String+Extension.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation

extension String {
    func toDate() -> Date? {
        // "2025-03-23T02:16:49.415Z"
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        let date = formatter.date(from: self)
        return date
    }
}
