//
//  DetailViewViewController.swift
//  Closure
//
//  Created by Duc Anh on 11/12/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

class DetailViewViewController: UIViewController {
    
    @IBOutlet weak var detailTextField: UITextField!
    
    var completion: ((String) -> Void)?
    let data = Data()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        completion?(detailTextField.text ?? "")
        navigationController?.popViewController(animated: true)
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
