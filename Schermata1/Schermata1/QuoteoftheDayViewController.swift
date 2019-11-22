//
//  QuoteoftheDayViewController.swift
//  Schermata1
//
//  Created by Angela Tagliafierro on 21/11/2019.
//  Copyright © 2019 Angela Tagliafierro. All rights reserved.
//

import UIKit

class QuoteoftheDayViewController: UIViewController {
    let once = Once()

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        

        // Do any additional setup after loading the view.
    }
    
    class Once {

      var already: Bool = false

      func run(block: () -> Void) {
        
        guard !already else { return }

        block()
        already = true
      }
    }
    override func viewDidAppear(_ animated: Bool) {
        once.run {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TestAppear") as! TestViewController
        self.present(vc, animated: true, completion: nil)
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
