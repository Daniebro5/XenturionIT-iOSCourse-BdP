//
//  Parsing.swift
//  WeatherApp
//
//  Created by Danni André on 28/6/23.
//

import Combine
import Foundation

func decode<T: Decodable>(_ data: Data) -> AnyPublisher<T, WeatherError> {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .secondsSince1970
    return Just(data)
        .decode(type: T.self, decoder: decoder)
        .mapError { .parsing(description: $0.localizedDescription) }
        .eraseToAnyPublisher()
}
