import SwiftUI

struct PopUpJoin: View {
    @Binding var isActivePop2: Bool

    let title: String
    let message: String
    let buttonTitle: String
    let action: () -> ()
    @State private var offset: CGFloat = 1000
    @State var isAnimation: Bool = false
    @State private var rotateDen = false
    var body: some View {
        
        ZStack {
            Color(.black)
                .opacity(0.5)
                .onTapGesture {
                    close()
                }
         
                
                VStack {
//                    Text(title)
//                        .font(.title3)
//                        .padding()
//                        .foregroundColor(Color("Auja3"))
                    
                    VStack {
                        Text(title)
                            .font(.title3)
                            .padding()
                            .foregroundColor(Color("Auja3"))
                        rotate2D()
                    
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
//                .offset(x: 0, y: offset)
//                .onAppear {
//                    withAnimation(.spring()) {
//                        offset = 0
//                    }
//                }
            }
            .ignoresSafeArea()
        }
    }
    func close() {
        withAnimation(.spring()) {
            offset = 1000
            isActivePop2 = false
        }
    }
}

struct PopUpJoin_Previews: PreviewProvider {
    static var previews: some View {
        PopUpJoin(isActivePop2: .constant(true), title: "Wait for the start", message: "", buttonTitle: "Leaving", action: {})
    }
}
