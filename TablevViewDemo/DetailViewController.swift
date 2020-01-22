//
//  DetailViewController.swift
//  TablevViewDemo
//
//  Created by Bhuvana on 05/03/19.
//  Copyright © 2019 capgemini. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var name = ""
    var images = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = name
        image.image = images
        // Do any additional setup after loading the view.
    }

}
