//
//  PhotoDetailViewController.swift
//  PhotoTapps
//
//  Created by sergey on 14.09.2021.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("hi")
            }
            
        }
        present(shareController, animated: true, completion: nil)
    }
    


}
