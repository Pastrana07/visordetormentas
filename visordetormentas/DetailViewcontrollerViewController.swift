//
//  DetailViewcontrollerViewController.swift
//  visordetormentas
//
//  Created by Pirlo Pastrana on 06/05/24.
//

import UIKit

class DetailViewcontroller: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage : String?
    var selectedPictureNumber = 0
    var totalPictures = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "This image is \(selectedPictureNumber) of \(totalPictures)"
        navigationItem.largeTitleDisplayMode = .never
        if let imageToload = selectedImage{
            imageView.image = UIImage(named: imageToload)
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
            navigationController?.hidesBarsOnTap = true
        }
     
        override func viewWillDisappear(_ animated: Bool) {
            navigationController?.hidesBarsOnTap = false
        }

}
