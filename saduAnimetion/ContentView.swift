//
//  ContentView.swift
//  sadu
//
//  Created by malak kariri on 26/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var RMoving = true
    @State var LMoving = true
    @State var isActive1 : Bool=false
    @State var isActive2 : Bool=false

    

    
  // Replace with your image names
    var body: some View {
        ZStack{
            HStack(spacing: 250.0) {
                //saud r
                Image("R3")
                
                    .offset(y: RMoving ? 0:200)
                    .animation (Animation.linear(duration:3).repeatForever(autoreverses: true))
                    .onAppear(){
                        self.RMoving.toggle()
                    }
                //saduL
                Image("L3")
                    .offset(y: LMoving ? 0:-200)
                    .animation(Animation.linear(duration:3)
                        .repeatForever(autoreverses: true))
                    .onAppear(){
                        self.LMoving.toggle()
                    }
                // .padding()
            }
            VStack{
                
                HStack{
                    Image("Auja")
                        .resizable()
                        .frame(width: 400,height: 400)
                }
                .padding(.top, -70)
                
        
                Button{isActive1 = true}
                    label:{ Text("Creat room")
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.674, green: 0.528, blue: 0.743))
                   .controlSize(.large)
                   .font(.title2)
                   .frame(width: 220 , height: 44)
                   .foregroundColor (Color("Auja4"))
                   .background(Color("Auja1"))
                   .cornerRadius(10)
               
            }
                
                Button{
                    isActive2 = true
                }label:{
                    Text("Join Room ")
             .buttonStyle(.borderedProminent)
             .tint(Color(red: 0.582, green: 0.714, blue: 0.699))
            .controlSize(.large)
             .font(.title2)
             .frame(width: 220 , height: 44)
             .foregroundColor (Color("Auja4"))
             .background(Color("Auja5"))
             .cornerRadius(10)
                    
                    }

                    
            }
            .padding(.top)
            if isActive1 {
                PopUpProfile(isActive1: $isActive1,title: "Your profile", message: "Choose your photo", buttonTitle: "NEXT") {

                    print("Pass to viewModel")
                }
            }
            if isActive2 {
                PopUpProfile2(isActive2: $isActive2,title: "Your profile", message: "Choose your photo", buttonTitle: "NEXT") {

                    print("Pass to viewModel")
                }
            }
        }

    }
   
}



#Preview {
    ContentView()
}

