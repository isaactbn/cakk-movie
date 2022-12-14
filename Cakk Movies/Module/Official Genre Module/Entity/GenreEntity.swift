//
//  GenreEntity.swift
//  Cakk Movies
//
//  Created by Isaac on 10/13/22.
//

import Foundation

struct GenreBodyResponse: Codable {
    let genres: [GenreBodyFullResponse]?
}

struct GenreBodyFullResponse: Codable {
    let id: Int
    let name: String
}
