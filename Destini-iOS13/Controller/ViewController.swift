//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Rhea Malik on 11/27/20.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storybrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storybrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storybrain.getStoryPrompt()
        choice1Button.setTitle(storybrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storybrain.getChoice2(), for: .normal)
    }

}

