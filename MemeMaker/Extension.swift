//
//  Extension.swift
//  MemeMaker
//
//  Created by Benard Chiherenge on 27/11/2025.
//

import SwiftUI

extension ContentView{
    func updateTopCaption(){
        switch topSegmentSelection {
            case 0:
            topCaption = topChoice[0].caption
        case 1:
            topCaption = topChoice[1].caption
        case 2:
            topCaption = topChoice[2].caption
        default:
            break
        }
    }
    func updateBottomCaption(){
        switch bottomSegmentSelection {
            case 0:
            bottomCaption = bottomChoice[0].caption
        case 1:
            bottomCaption = bottomChoice[1].caption
        case 2:
           bottomCaption = bottomChoice[2].caption
        default:
            break
        }
    }
//    if topCaption == topChoice[0] {
//        
//    }
    
//    if selectedTab == "List" {
//                    Text("Displaying list view content.")
//                } else if selectedTab == "Map" {
//                    Text("Displaying map view content.")
//                } else {
//                    Text("Displaying settings content.")
//                }
}
