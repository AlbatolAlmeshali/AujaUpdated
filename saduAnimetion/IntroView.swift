//
//  ContentView.swift
//  SB
//
//  Created by Shaden Alghamdi on 12/10/2023.
//

import SwiftUI

struct IntroView: View {
    @State private var currentPage: Int = 0
    var body: some View {
        NavigationStack{
            ZStack {
                
                TabView(selection: $currentPage) {
                    // Page 1 content
                    
                    Image("welcome")
                        .resizable()
                        .padding()
                        .frame(width:500 , height:800 )
                    
                        .padding()
                        .tag(0)
                    
                    // Page 2 content
                    Image("intro")
                        .resizable()
                        .padding()
                        .tag(1)
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .accentColor(Color("Auja1"))
                .colorScheme(.light)
                VStack {
                    HStack {
                        Spacer()
                        
                        if currentPage == 0 {
                            NavigationLink("Skip", destination: ContentView())
                            .foregroundColor(.gray)
                            .padding()
                        }
                    }
                    HStack {
                        Spacer()
                        
                        if currentPage == 1 {
                            //Button(action: {
                            // Handle get started action
                            // For example, navigate to the main content or dismiss the onboarding
                            //                    }) {
                            
                            //                        Button("Get Started") {
                            //                            // Handle skip action
                            //                            // For example, navigate to the main content or dismiss the onboarding
                            //                        }
                            NavigationLink("Get Started", destination: ContentView())
                                .foregroundColor(Color("Auja1"))
                                .padding()
                        }
                    }
                    Spacer()
                    
                }
            }
            
        }
        
        
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
