//
//  CaptionOption.swift
//  MemeMaker
//
//  Created by Benard Chiherenge on 27/11/2025.
//

import Foundation

struct CaptionOption: Identifiable, Hashable{
    var id: UUID = UUID()
    var emoji:String
    var caption: String
}
var topChoice = [CaptionOption(emoji: "🐔", caption: "Guess what?"), CaptionOption(emoji: "🐮", caption: "Let me tell you something"), CaptionOption(emoji: "🐏", caption: "Let me tell you a joke?")]
var bottomChoice = [CaptionOption(emoji: "😆", caption: "Chickens hate Fry-day"), CaptionOption(emoji: "😏", caption: "Cows go to the Honeymooon after wedding"), CaptionOption(emoji: "🙈", caption: "Sheep walk in the dark because they have lambs"),]


