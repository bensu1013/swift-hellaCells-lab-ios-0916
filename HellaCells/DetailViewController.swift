//
//  DetailViewController.swift
//  HellaCells
//
//  Created by Benjamin Su on 10/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var cellDetail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = cellDetail
        
    }
    
    
    
    
    
}


