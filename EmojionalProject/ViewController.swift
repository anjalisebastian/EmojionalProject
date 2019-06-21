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
        let emojiMessage = customMessages[emojis[selectedEmotion]!]?[Int.random(in: 0...2)]
        let alertController = UIAlertController(title: "Life News Flash", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    let emojis = ["💑": "Love and marriage!", "🤰": "Pregnant! Baby on the way!", "👨‍👩‍👧" : "A little family!", "👸" : "You a queen, go shine yo light & live yo best life!" , "👩‍🌾" : "You can farm!" , "👩‍💻" : "Or you can code!" , "💃" : "Or you can dance dance dance!" , "👵🏻" : "We all inevitably grow old! Age with grace!"]
    
    let customMessages = ["Love and marriage!" : ["I found my lover!", "She's the one!", "I can't stop thinkin about him!"] ,
                          "Pregnant! Baby on the way!" : ["Baby on the way!", "This sucks!" , "Is it a boy or girl?"] ,
                          "A little family!" : ["We gotta buy a house!" ,"Should we have more children?", "When is date night???"],
                          "You a queen, go shine yo light & live yo best life!" : ["Our little girl is all grown up!", "She gonna conquer the world!" , "She can and will do it all!!!"],
                          "You can farm!" :["I'm gonna grow all the plants!", "I'm gonna feed the world!", "I gotta rise and grind!"],
                          "Or you can code!" : ["Let's get this bread!!","I know computers!" , "Swift, Ruby, Java, Python... ask me anything!"],
                          "Or you can dance dance dance!" : ["Salsa!" , "Tango!" , "Whip!"] ,
                          "We all inevitably grow old! Age with grace!" : ["I love shuffleboard!" , "My my how the years have flown by!" , "My wisdom ain't free!"]]

}
