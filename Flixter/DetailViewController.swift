//
//  DetailViewController.swift
//  Flixter
//
//  Created by Emmanuel Buckman on 2/8/23.
//

import Foundation
import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var movieOverview: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var votes: UILabel!
    @IBOutlet weak var voteAverage: UILabel!
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Nuke.loadImage(with: movie.backdropPath, into: backdropImageView)

        // Set labels with the associated track values.
        movieTitle.text = movie.movieTitle
        movieOverview.text = movie.movieOverview
        popularity.text = String(movie.popularity)
        votes.text = String(movie.votes)
        voteAverage.text = String(movie.voteAverage)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
