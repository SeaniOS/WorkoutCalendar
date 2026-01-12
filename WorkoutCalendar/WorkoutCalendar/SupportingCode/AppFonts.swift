//
//  AppFonts.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation
import SwiftUI

enum AppFonts {
    enum OpenSans {
        static func bold(size: CGFloat) -> Font {
            return .custom("OpenSans-Bold", size: size)
        }
        
        static func regular(size: CGFloat) -> Font {
            return .custom("OpenSans-Regular", size: size)
        }
    }

}
