//
//  MovieCell.swift
//  Flixter
//
//  Created by Emmanuel Buckman on 2/7/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.title
        movieOverviewLabel.text = movie.overview
        
        let baselmageUrl = "https://www.themoviedb.org/t/p/w1280"
        let fullImage = URL(string: baselmageUrl + movie.backdrop_path.absoluteString)!
//        I Do any additional setup after loading the view.
        Nuke.loadImage (with: fullImage, into: movieImageView)

        // Load image async via Nuke library image loading helper method
//        Nuke.loadImage(with: movie.poster_path, into: movieImageView)
    }

}
