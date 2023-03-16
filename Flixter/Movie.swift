//
//  Movie.swift
//  Flixter
//
//  Created by Emmanuel Buckman on 2/7/23.
//

import Foundation

struct Movie: Decodable {
    let title: String
    let overview: String
    let backdrop_path: URL
    let poster_path: URL
    let vote_count: Int
    let vote_average: Double
    let popularity: Double
}

struct MoviesResponse: Decodable {
    let results: [Movie]
}

extension Movie {
    
    static var mockMovies: [Movie] = [
        Movie(title: "Shotgun Wedding",
              overview: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.",
              backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg")!,
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg")!,
              vote_count: 271,
              vote_average: 6.3,
              popularity: 4447.498),
        Movie(title: "M3GAN",
              overview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
              backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/q2fY4kMXKoGv4CQf310MCxpXlRI.jpg")!,
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!,
              vote_count: 1355,
              vote_average: 7.6,
              popularity: 3246.154),
        Movie(title: "Transfusion",
              overview: "Ryan Logan, a former Special Forces operative, is battling to cope with life after the loss of his wife.  He is thrusted into the criminal underworld to keep his only son from being taken from him.",
              backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/a4I481szRmycyreQTLrRe4f4YJe.jpg")!,
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/bxh5xCCW9Ynfg6EZJWUkc1zqTnr.jpg")!,
              vote_count: 38,
              vote_average: 6.8,
              popularity: 2708.574),
        Movie(title: "Detective Knight: Independence",
              overview: "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities. The misguided vigilante, playing cop with a stolen gun and uniform, has a bank vault full of reasons to put on his own fireworks show... one that will strike dangerously close to Knight's home.",
              backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/tCpMRsHlfR6CcqJYA3kJMS3YApt.jpg")!,
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/jrPKVQGjc3YZXm07OYMriIB47HM.jpg")!,
              vote_count: 27,
              vote_average: 7,
              popularity: 2737.206),
        Movie(title: "Avatar: The Way of Water",
              overview: "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.",
              backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg")!,
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg")!,
              vote_count: 5071,
              vote_average: 7.7,
              popularity: 2003.353),
        Movie(title: "Devotion",
              overview: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.",
              backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/5pMy5LF2JAleBNBtuzizfCMWM7k.jpg")!,
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/26yQPXymbWeCLKwcmyL8dRjAzth.jpg")!,
              vote_count: 241,
              vote_average: 7.7,
              popularity: 1761.062)
    
    ]
}
