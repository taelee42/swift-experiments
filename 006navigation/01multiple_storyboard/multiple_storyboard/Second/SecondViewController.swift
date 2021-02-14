//
//  SecondViewController.swift
//  multiple_storyboard
//
//  Created by Terry Lee on 2021/02/14.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var navigationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToFirstScreen(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
