//
//  ViewController.swift
//  navigationController
//
//  Created by Hue Woon Kim on 26/07/2019.
//  Copyright © 2019 Hue Woon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView : UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as? UITableViewCell
        if cell == nil {
            return;
        }
        let indexPath = tableView.indexPath(for: cell!)
        print("selected : \(data[indexPath!.row])")
    }
    
    var data = ["A", "B", "c", "D", "E"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        cell.textLabel!.text = data[indexPath.row]
        return cell
    }


}

