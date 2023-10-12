import SwiftUI

struct PopUpInvite: View {
    @Binding var isActivePop1: Bool

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
                Text(title)
                    .font(.title2)
                    .bold()
                    .padding()
                    .foregroundColor(Color("Auja3"))
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10).frame(width: 220,height: 50)
                        .foregroundColor(Color("Auja4"))
                    HStack{ Text("374689")
                           
                        
                    Image(systemName: "doc.on.doc")
                            .foregroundColor(Color("Auja3"))
                            .padding(.leading, 30)
                    }
                    .padding(.leading, 50)
                    
                    
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10).frame(width: 220,height: 240)
                        .foregroundColor(Color("Auja5"))
                    
                    VStack{
                        HStack{
                            Image("imgAuja9")
                                .resizable()
                                .frame(width: 44,height: 44)
                                .clipShape(Circle())
                            Text("Dana")
                            .foregroundColor(Color("Auja4"))}
                        
                        HStack{
                            Image("imgAuja2")
                                .resizable()
                                .frame(width: 44,height: 44)
                                .clipShape(Circle())
                            Text("Sara")
                            .foregroundColor(Color("Auja4"))}
                        HStack{
                            Image("imgAuja8")
                                .resizable()
                                .frame(width: 44,height: 44)
                                .clipShape(Circle())
                            Text("Lena")
                                .foregroundColor(Color("Auja4"))
                            
                        }
                        HStack{
                            Image("imgAuja7")
                                .resizable()
                                .frame(width: 44,height: 44)
                                .clipShape(Circle())
                            Text("Lama")
                            .foregroundColor(Color("Auja4"))}
                        
                        
                        
                        
                    }
                    .padding(.trailing, 100.0)
                    
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

                        Text(buttonTitle)
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
            isActivePop1 = false
        }
    }
}

struct PopUpInvite_Previews: PreviewProvider {
    static var previews: some View {
        PopUpInvite(isActivePop1: .constant(true), title: "Game Code", message: "Are you Sure?", buttonTitle: "Start Game", action: {})
    }
}
