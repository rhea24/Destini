//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Rhea Malik on 11/27/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    let stories = [
        Story(
            title: "You've been working all night, dreaming of what to eat after your long, exhausting shift. You've got two options this early morning",
            choice1: "Chick-fil-a", choice1Destination: 1,
            choice2: "Chipotle", choice2Destination: 2
        ),
        Story(
            title: "As you enter the Chick-fil-a drive-thru, you realize it's too early and only the breakfast menu is available.",
            choice1: "Drift your way back to Chipotle", choice1Destination: 2,
            choice2: "Who cares? This will have to do.", choice2Destination: 3
        ),
        Story(
            title: "You arrive at Chipotle and notice the intercom system in the drive-through is broken.",
            choice1: "Get out of your warm and cozy car and go order inside the bitter-cold restaurant.", choice1Destination: 4,
            choice2: "Yell at the intercom speaker.", choice2Destination: 5
        ),
        Story(title: "You have two combinations to satisfy your cravings.", choice1: "Chick-fil-a Chicken Biscuit with hashbrowns", choice1Destination: 8, choice2: "Egg and Cheese Bagel with an English Muffin", choice2Destination: 9),
        Story(title: "Looking at the menu inside, there are two options that seem delicious.", choice1: "Burrito Bowl with chicken, brown rice, black beans, sour cream, veggies, salsa, and guac", choice1Destination: 6, choice2: "Crispy Chicken taco along with chips and guac", choice2Destination: 7),
        Story(title: "The intercom speaker still doesn't work.", choice1: "Go inside and order in the freezing restaurant.", choice1Destination: 4, choice2: "Go home. This whole thing was a mess anyway, I just want to go to sleep.", choice2Destination: 10),
        Story(title: "May the legend of the Burrito Bowl be told for generations to come.", choice1: "The End", choice1Destination: 6, choice2: "Restart", choice2Destination: 0),
        Story(title: "May the legend of the Taco and Chips & Guac be told for generations to come.", choice1: "The End", choice1Destination: 7, choice2: "Restart", choice2Destination: 0),
        Story(title: "May the legend of the Chicken Biscuit and Hashbrowns be told for generations to come.", choice1: "The End.", choice1Destination: 8, choice2: "Restart", choice2Destination: 0),
        Story(title: "May the legend of the Egg & Cheese bagel with an English muffin be told for generations to come.", choice1: "The End.", choice1Destination: 9, choice2: "Restart", choice2Destination: 0),
        Story(title: "You go home and have the nicest sleep of your life with dreams about Chipotle", choice1: "The End.", choice1Destination: 10, choice2: "Restart", choice2Destination: 0)
    ]

    
    mutating func nextStory(userChoice: String) {
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
    }
    
    func getStoryPrompt() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
}
