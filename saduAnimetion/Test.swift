//
//  ContentView.swift
//  TestM
//
//  Created by Albatol Almeshali on 30/03/1445 AH.
//

import SwiftUI

struct Test: View {
    
    @State private var navigateToNextView = false

       var body: some View {
           NavigationView {
               VStack{
                   rotate2D()
                   
                   NavigationLink(destination: QuestionView(), isActive: $navigateToNextView) {
                   }
                   .onAppear {
                       // Start a timer that triggers navigation after 1 second (adjust the interval as needed)
                       Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { timer in
                           // Set navigateToNextView to true to trigger the NavigationLink
                           navigateToNextView = true
                       }
                   }}
           }
       }
   }









//struct NextView: View {
//    var body: some View {
//        Text("Next View")
//    }}









#Preview {
    Test()
}
