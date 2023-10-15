//
//  saduAnimetionApp.swift
//  saduAnimetion
//
//  Created by malak kariri on 26/03/1445 AH.
//

import SwiftUI

@main
struct saduAnimetionApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            SplashScreen()
            
        }
        
        WindowGroup {
            IntroView()
            
        }
        
        WindowGroup {
            ContentView()
        }
        
//         WindowGroup {
//             PopUpProfile(isActive1: $isActive1, title: "Your profile", message: "Choose your photo", buttonTitle: "NEXT", action: <#() -> ()#>)}
    }
}
