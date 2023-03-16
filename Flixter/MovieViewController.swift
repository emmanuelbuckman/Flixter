//
//  ViewController.swift
//  Flixter
//
//  Created by Emmanuel Buckman on 2/7/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let baselmageUrl = "https://www.themoviedb.org/t/p/w1280"
//        let fullImage = URL(string: baselmageUrl + movie.backdrop_path.absoluteString)!
////        I Do any additional setup after loading the view.
//        Nuke.loadImage (with: fullImage, into: backdropImageView)
        
        tableView.dataSource = self
        
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=84085186aad948bc223de70efbc66efb")!

        // Use the URL to instantiate a request
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }
            

            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
            do {
                let decoder = JSONDecoder()

                let response = try decoder.decode(MoviesResponse.self, from: data)
                
                let movies = response.results
                
                DispatchQueue.main.async {
                    self?.movies = movies
                    self?.tableView.reloadData()
                }

                // Access the array of tracks from the `results` property
                
                print("✅ \(movies)")
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        // Get the movie that corresponds to the table view row
        let movie = movies[indexPath.row]
        
        // Configure the cell with it's associated movie
        cell.configure(with: movie)
        
        // return the cell for display in the table view
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller
        
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {
            
            // Use the index path to get the associated track
            let movie = movies[indexPath.row]
            
            // Set the track on the detail view controller
            detailViewController.movie = movie
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
       
    }
    
}
