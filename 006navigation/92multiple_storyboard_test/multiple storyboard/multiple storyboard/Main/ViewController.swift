//
//  ViewController.swift
//  multiple storyboard
//
//  Created by Terry Lee on 2021/02/12.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func nextScreen(_ sender: UIButton) {
        let nextStoryboard = UIStoryboard.init(name: "Next", bundle: nil)
        guard let nextVC = nextStoryboard.instantiateViewController(identifier: "Next") as? NextViewController else {return}
        self.navigationController?.pushViewController(nextVC, animated: true)
//        show(nextVC, sender: nil)
//        present(nextVC, animated: true, completion: nil)
        
//        let storyboard = UIStoryboard(name: "MyStoryboardName", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "someViewController")
//        self.navigationController?.pushViewController(controller, animated: true)
    }
    

}

