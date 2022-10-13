//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    let storys = [
        // Main story
        Story(s: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens the passenger door for you and says: 'Need a ride, boy?'.", c1: "I'll hop in. Thanks for the help!", c2: "Well, I don't have many options. Better ask him if he's a murderer."),
        // choice1 story of main story
        Story(s: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", c1: "I love Elton John! Hand him the cassette tape.", c2: "It’s him or me. Take the knife and stab him."),
        // choice2 story of main story
        Story(s: "He nods slowly, unphased by the question.", c1: "At least he's honest. I'll climb in.", c2: "Wait, I know how to change a tire."),
        
    ]
}


