//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Thu nguyen on 3/28/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var post : Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = post.caption
        descriptionLabel.numberOfLines = 0
        
        if let imageUrl = URL(string: post.photos[0].originalSize.url.absoluteString) {
         // Use the Nuke library's load image function to asynchronously fetch and load the image from the image URL.
            Nuke.loadImage(with: imageUrl, into: posterImageView)
     }
    }
   


}
