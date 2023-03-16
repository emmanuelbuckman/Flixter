//
//  Poster.swift
//  Flixter
//
//  Created by Emmanuel Buckman on 2/16/23.
//

import Foundation

struct Poster: Decodable {
    let posterPath: URL
    let movieName: String
    let movieDescription: String
    let voteAverage: Float
    let vote: Int
    let popularity: Float
    
    enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case movieName = "title"
        case movieDescription = "overview"
        case voteAverage = "vote_average"
        case vote = "vote_count"
        case popularity
    }
}

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}
