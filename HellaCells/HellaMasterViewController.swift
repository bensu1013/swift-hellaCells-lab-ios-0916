//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
import Foundation
import UIKit

class HellaMasterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var intArray: [Int] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...100 {
            intArray.append(i)
        }
    
    }

   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return intArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HellaCell", for: indexPath)
        cell.textLabel?.text = String(intArray[indexPath.row])
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "DetailsSegue" {return}
        if let dest = segue.destination as? DetailViewController,
            let index = tableView.indexPathForSelectedRow {
            dest.cellDetail = String(intArray[index.row])
        }
        
        
    }
    
    
    
    

}

