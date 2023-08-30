// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let gameOfThronesData = try? JSONDecoder().decode(GameOfThronesData.self, from: jsonData)

import Foundation

// MARK: - GameOfThronesDatum
struct GameOfThronesDatum: Codable {
    let id: Int?
    let firstName, lastName, fullName, title: String?
    let family, image: String?
    let imageURL: String?

    enum CodingKeys: String, CodingKey {
        case id, firstName, lastName, fullName, title, family, image
        case imageURL = "imageUrl"
    }
}

typealias GameOfThronesData = [GameOfThronesDatum]


