//
//  ViewController.swift
//  Closure
//
//  Created by Duc Anh on 11/12/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var masterTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewViewController else {return}
        destination.completion = { text in
                self.masterTextField.text = text
        }
        
    }

}

