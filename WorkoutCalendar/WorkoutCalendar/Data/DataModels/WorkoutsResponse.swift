//
//  WorkoutsResponse.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation

struct WorkoutsResponse: Codable {
    let dayData: [DayData]
    
    private enum CodingKeys: String, CodingKey {
        case dayData = "day_data"
    }
}

struct DayData: Codable {
    let id: String
    let assignments: [Assignment]
    let trainer: String
    let client: String
    let day: String
    let date: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case assignments = "assignments"
        case trainer = "trainer"
        case client = "client"
        case day = "day"
        case date = "date"
    }
}

struct Assignment: Codable {
    let id: String
    let status: Int
    let client: String
    let title: String
    let day: String
    let date: String
    let exercisesCompleted: Int
    let exercisesCount: Int
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case status = "status"
        case client = "client"
        case title = "title"
        case day = "day"
        case date = "date"
        case exercisesCompleted = "exercises_completed"
        case exercisesCount = "exercises_count"
    }
}
