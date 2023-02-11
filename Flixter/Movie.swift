//
//  Movie.swift
//  Flixter
//
//  Created by Emmanuel Buckman on 2/7/23.
//

import Foundation

struct Movie {
    let movieTitle: String
    let movieOverview: String
    let backdropPath: URL
    let posterPath: URL
    let votes: Int
    let voteAverage: Double
    let popularity: Double
}

extension Movie {
    
    static var mockMovies: [Movie] = [
        Movie(movieTitle: "Shotgun Wedding",
              movieOverview: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/original/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg")!,
              posterPath: URL(string: "https://image.tmdb.org/t/p/original/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg")!,
              votes: 271,
              voteAverage: 6.3,
              popularity: 4447.498),
        Movie(movieTitle: "M3GAN",
              movieOverview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/original/q2fY4kMXKoGv4CQf310MCxpXlRI.jpg")!,
              posterPath: URL(string: "https://image.tmdb.org/t/p/original/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!,
              votes: 1355,
              voteAverage: 7.6,
              popularity: 3246.154),
        Movie(movieTitle: "Transfusion",
              movieOverview: "Ryan Logan, a former Special Forces operative, is battling to cope with life after the loss of his wife.  He is thrusted into the criminal underworld to keep his only son from being taken from him.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/original/a4I481szRmycyreQTLrRe4f4YJe.jpg")!,
              posterPath: URL(string: "https://image.tmdb.org/t/p/original/bxh5xCCW9Ynfg6EZJWUkc1zqTnr.jpg")!,
              votes: 38,
              voteAverage: 6.8,
              popularity: 2708.574),
        Movie(movieTitle: "Detective Knight: Independence",
              movieOverview: "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities. The misguided vigilante, playing cop with a stolen gun and uniform, has a bank vault full of reasons to put on his own fireworks show... one that will strike dangerously close to Knight's home.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/original/tCpMRsHlfR6CcqJYA3kJMS3YApt.jpg")!,
              posterPath: URL(string: "https://image.tmdb.org/t/p/original/jrPKVQGjc3YZXm07OYMriIB47HM.jpg")!,
              votes: 27,
              voteAverage: 7,
              popularity: 2737.206),
        Movie(movieTitle: "Avatar: The Way of Water",
              movieOverview: "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/original/s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg")!,
              posterPath: URL(string: "https://image.tmdb.org/t/p/original/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg")!,
              votes: 5071,
              voteAverage: 7.7,
              popularity: 2003.353),
        Movie(movieTitle: "Devotion",
              movieOverview: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.",
              backdropPath: URL(string: "https://image.tmdb.org/t/p/original/5pMy5LF2JAleBNBtuzizfCMWM7k.jpg")!,
              posterPath: URL(string: "https://image.tmdb.org/t/p/original/26yQPXymbWeCLKwcmyL8dRjAzth.jpg")!,
              votes: 241,
              voteAverage: 7.7,
              popularity: 1761.062)
    
    ]
}
