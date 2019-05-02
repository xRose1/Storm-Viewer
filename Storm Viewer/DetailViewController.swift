//
//  DetailViewController.swift
//  Storm Viewer
//
//  Created by Mac on 4/30/19.
//  Copyright © 2019 Sbedx4. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    var selectedImage: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToLoad = selectedImage {
            ImageView.image  = UIImage(named: imageToLoad)
        }
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    override var prefersHomeIndicatorAutoHidden: Bool {
        return navigationController?.hidesBarsOnTap ?? false
    }




}
