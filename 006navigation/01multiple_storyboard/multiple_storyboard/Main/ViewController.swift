//
//  ViewController.swift
//  multiple_storyboard
//
//  Created by Terry Lee on 2021/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navigationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func goToSecondScreen(_ sender: UIButton) {
        let secondStoryboard = UIStoryboard.init(name: "Second", bundle: nil)
        guard let secondVC = secondStoryboard.instantiateViewController(identifier: "SecondSB") as? SecondViewController else {return}
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

