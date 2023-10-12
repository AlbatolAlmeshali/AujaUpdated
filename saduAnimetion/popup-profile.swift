import SwiftUI

struct CustomDialog2: View {
    @Binding var isActive1: Bool

    let title: String
    let message: String
    let buttonTitle: String
    let action: () -> ()
    @State private var offset: CGFloat = 1000

    var body: some View {
        ZStack {
            Color(.black)
                .opacity(0.5)
                .onTapGesture {
                    close()
                }

            VStack {
                Text("Your profile")
                    .font(.title2)
                    .bold()
                    .padding()
                    .foregroundColor(Color("Auja3"))
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10).frame(width: 220,height: 50)
                        .foregroundColor(Color("Auja4"))
                    HStack{ 
                        Text("enter your name")
                            .multilineTextAlignment(.center)
       
                    }
                    .padding(.leading, 0.0)
                    
                    
                }
                Text("Choose your photo")
                    .font(.title2)
                    .bold()
                    .padding()
                    .foregroundColor(Color("Auja3"))
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10).frame(width: 220,height: 240)
                        .foregroundColor(Color("Auja4"))
                    
                    VStack{
                        HStack{
                            Image("1")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            Image("2")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            Image("3")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                           
                        }
                        HStack{
                            Image("4")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(Circle())
                            
                            
                            Image("5")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            Image("10")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                           
                        }
                        HStack{
                            Image("7")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            Image("8")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            Image("9")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                           
                        }
 
                    }
                    
                    
                }

//                Text(message)
//                    .font(.body)
//                    .foregroundColor(Color("Auja3"))
                Button {
                    action()
                    close()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("Auja1"))
                            .frame(width: 220,height: 44)

                        Text("NEXT")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color("Auja4"))
                            .padding()
                    }
                    .padding()
                }
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .background(Color("Auja2"))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(alignment: .topTrailing) {
                Button {
                    close()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title2)
                        .fontWeight(.medium)
                }
                .tint(.black)
                .padding()
            }
         //   .shadow(radius: 20)
            .padding(30)
            .offset(x: 0, y: offset)
            .onAppear {
                withAnimation(.spring()) {
                    offset = 0
                }
            }
        }
        .ignoresSafeArea()
    }

    func close() {
        withAnimation(.spring()) {
            offset = 1000
            isActive1 = false
        }
    }
}

struct CustomDialog2_Previews: PreviewProvider {
    static var previews: some View {
        CustomDialog2(isActive1: .constant(true), title: "Game Code", message: "Are you Sure?", buttonTitle: "Start Game", action: {})
    }
}
