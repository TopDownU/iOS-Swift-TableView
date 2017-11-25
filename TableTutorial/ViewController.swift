//
//  ViewController.swift
//  TableTutorial
//
//  Created by Vidyadhar V. Thatte on 11/25/17.
//  Copyright © 2017 VdThatte. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var theTableView: UITableView!
    
    var list : [String] = ["one", "two", "three", "four"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.list[indexPath.row]
        return cell
    }
    
    


}

