//
//  RankPage.swift
//  CustomDialog
//
//  Created by Albatol Almeshali on 26/03/1445 AH.
//

import SwiftUI

struct RankPage: View {
    @State var BMoving = false
    @State var TMoving = false
    var body: some View {
        VStack{
            VStack {
                Text ("KAFU!!!")
                    .font(.largeTitle)
                    .foregroundColor(Color("Auja3"))
                
                
                HStack (spacing: 0 ){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .padding(.bottom, -100)
                            .frame(width: 67,height: 100)
                            .foregroundColor(Color("Auja8"))
                        
                        VStack{
                            Image("imgAuja5")
                                .resizable()
                                .frame(width: 60,height: 60)
                            Text("Bader")
                                .font(.callout)
                                .foregroundColor(Color("Auja2"))
                            
                            
                        }
                        .padding(.top, 15)
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .padding(.bottom, -30
                            )
                            .frame(width: 67,height: 224)
                            .foregroundColor(Color("Auja6"))
                        VStack{
                            Image("imgAuja1")
                                .resizable()
                                .frame(width: 60,height: 60)
                            Text("Dana")
                                .font(.callout)
                                .foregroundColor(Color("Auja2"))
                            
                            
                        }
                        .padding(.top, -100)
                        
                    }
                    
                    ZStack  {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .padding(.bottom, -60)
                            .frame(width: 67,height: 162)
                            .foregroundColor(Color("Auja7"))
                        VStack{
                            Image("imgAuja6")
                                .resizable()
                                .frame(width: 60,height: 60)
                            Text("Noura")
                                .font(.callout)
                                .foregroundColor(Color("Auja2"))
                            
                            
                        }.padding(.top, -50)
                        
                    }
                    
                    
                }
                
                
                
                .offset(y: BMoving ? -10:250)
                .animation (Animation.linear(duration: 2))
                .onAppear(){
                    self.BMoving.toggle()
                }
                
            }
            ZStack{
                
                
                RoundedRectangle(cornerRadius: 10).frame(width: 322,height: 270)
                    .foregroundColor(Color("Auja2"))
                VStack (spacing: 0 ){
                    HStack{
                        Image("imgAuja10")
                            .resizable()
                            .frame(width: 60,height: 60)
                            
                        Text("Mohammed")
                        .foregroundColor(Color("Auja3"))}.padding(.trailing, 10)
                    
                    HStack{
                        Image("imgAuja3")
                            .resizable()
                            .frame(width: 60,height: 60)
                           
                        Text("Khalid")
                        .foregroundColor(Color("Auja3"))}.padding(.trailing, 50)
                    HStack{
                        Image("imgAuja4")
                            .resizable()
                            .frame(width: 60,height: 60)
                          
                        Text("Sara")
                            .foregroundColor(Color("Auja3"))
                        
                    }.padding(.trailing, 60)
                    HStack{
                        Image("imgAuja11")
                            .resizable()
                            .frame(width: 60,height: 60)
                            
                        Text("Lena")
                        .foregroundColor(Color("Auja3"))}.padding(.trailing, 60)
                    
                    
                    
                    
                }
                .padding(.trailing, 120)
                
            }
            
            Button(/*@START_MENU_TOKEN@*/"Home"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .frame(width: 220,height: 44)
            .foregroundColor(Color("Auja2"))
            .background(Color("Auja1"))
            .cornerRadius(10)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    RankPage()
}
