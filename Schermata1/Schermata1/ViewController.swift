//
//  ViewController.swift
//  Schermata1
//
//  Created by Angela Tagliafierro on 20/11/2019.
//  Copyright © 2019 Angela Tagliafierro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favQuote.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = Library.dequeueReusableCell(withIdentifier: "cella", for: indexPath) as? FavQuoteTableViewCell {
            cell.FavouriteLabel.text = favQuote[indexPath.row]
            return cell
        }
        else {
            print("errore")
            return FavQuoteTableViewCell()
        }
        
    }
    
   
    @IBOutlet weak var Library: UITableView!
    
    var favQuote = ["a","b","c","d","e","f"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Library.delegate = self
        Library.dataSource = self 
        
    }


}

