//
//  DefaultWorkoutsRepository.swift
//  WorkoutCalendar
//
//  Created by DO HOANG SON on 12/1/26.
//

import Foundation

final class DefaultWorkoutsRepository: WorkoutsRepository {
    private let session: URLSessionProtocol
    
    init(session: URLSessionProtocol = URLSession.shared) {
        self.session = session
    }
    
    func fetchWorkouts() async throws -> WorkoutsResponse {
        guard let url = URL(string: APIConstants.workoutsURLString) else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await session.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              200..<300 ~= httpResponse.statusCode else {
            throw URLError(.badServerResponse)
        }
        
#if DEBUG
        if let jsonString = String(data: data, encoding: .utf8) {
            myPrint(jsonString)
        }
#endif
        
        return try JSONDecoder().decode(WorkoutsResponse.self, from: data)
    }
}
