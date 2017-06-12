//
//  ViewController.swift
//  MemeMaker
//
//  Created by Nima Soleimani on 4/26/17.
//  Copyright © 2017 Nima Soleimani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    let topChoices =
        [CaptionOption(emoji: "🕶", caption: "You know what's cool?"),
         CaptionOption(emoji: "⚙️", caption: "You know what grinds my gears?"),
         CaptionOption(emoji: "💕", caption: "You know what I love?")]
    let bottomChoices =
        [CaptionOption(emoji: "😼", caption: "Cats wearing hats"),
         CaptionOption(emoji: "🐶", caption: "Dogs eating logs"),
         CaptionOption(emoji: "🐒", caption: "Monkeys getting funky")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        topCaptionSegmentedControl.removeAllSegments()
        for option in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: option.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for option in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: option.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        setLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        setLabels()
    }
    
    func setLabels() {
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        topCaptionLabel.text = topChoices[topIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomIndex].caption
    }
}

