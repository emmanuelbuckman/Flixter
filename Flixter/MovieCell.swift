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
        movieTitleLabel.text = movie.movieTitle
        movieOverviewLabel.text = movie.movieOverview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.posterPath, into: movieImageView)
    }

}
