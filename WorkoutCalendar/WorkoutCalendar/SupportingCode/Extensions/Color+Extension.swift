//
//  Color+Extension.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation
import SwiftUI

extension Color {
    static func rgba(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1.0) -> Color {
        Color(red: r / 255.0, green: g / 255.0, blue: b / 255.0, opacity: a)
    }
}
