//
//  WeatherClientInterface.swift
//  DesigningDependencies
//
//  Created by Stanisław Paśkowski on 09/08/2020.
//

import Combine
import CoreLocation
import Foundation

struct WeatherClient {
    var weather: () -> AnyPublisher<WeatherResponse, Error>
    var searchLocations: (CLLocationCoordinate2D) -> AnyPublisher<[Location], Error>
}

struct WeatherResponse: Decodable, Equatable {
  var consolidatedWeather: [ConsolidatedWeather]

  struct ConsolidatedWeather: Decodable, Equatable {
    var applicableDate: Date
    var id: Int
    var maxTemp: Double
    var minTemp: Double
    var theTemp: Double
  }
}

struct Location {}
