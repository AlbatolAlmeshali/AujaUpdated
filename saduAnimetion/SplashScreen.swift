//
//  SplashScreen.swift
//  SB
//
//  Created by Shaden Alghamdi on 12/10/2023.
//

import SwiftUI

struct SplashScreen: View {
    @State var RMoving = true
    @State var LMoving = true
    
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            IntroView()
        } else {
            
            ZStack{
                HStack(spacing: 250.0) {
                    //saud r
                    Image("R3")
                    
                        .offset(y: RMoving ? 0:200)
                        .animation (Animation.linear(duration:4).repeatForever(autoreverses: true))
                        .onAppear(){
                            self.RMoving.toggle()
                        }
                    //saduL
                    Image("L3")
                        .offset(y: LMoving ? 0:-200)
                        .animation(Animation.linear(duration:4)
                            .repeatForever(autoreverses: true))
                        .onAppear(){
                            self.LMoving.toggle()
                        }
                }
                
                VStack {
                    VStack {
                        Image( "logo")
                            .font(.system(size: 80))
                            
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.00
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
