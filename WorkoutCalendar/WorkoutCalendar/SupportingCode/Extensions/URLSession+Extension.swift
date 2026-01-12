//
//  URLSession+Extension.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation

protocol URLSessionProtocol {
    func data(from url: URL) async throws -> (Data, URLResponse)
}

extension URLSession: URLSessionProtocol {}
