//
//  ViewController.swift
//  EmojionalProject
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel!.text!
        let alertController = UIAlertController(title: "Alert", message: "Hey there!", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    let emojis = ["💑": "Love and marriage!", "🤰": "Pregnant! Baby on the way!", "👨‍👩‍👧" : "A little family!", "👸" : "You a queen, go shine yo light & live yo best life!" , "👩‍🌾" : "You can farm!" , "👩‍💻" : "Or you can code!" , "💃" : "Or you can dance dance dance!" , "👵🏻" : "We all inevitably grow old! Age with grace!"]

}
