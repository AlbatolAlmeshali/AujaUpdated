//
//  rotate2D.swift
//  CustomDialog
//
//  Created by Albatol Almeshali on 27/03/1445 AH.
//

import SwiftUI

struct rotate2D: View {
    @State private var rotateDen = false
    
    var body: some View {
        
        
        Image("Den")
            .resizable()
            .frame(width: 100,height: 100)
            .rotationEffect(.degrees(rotateDen ? -360:0))
            .animation(Animation.easeInOut(duration: 7).delay(0.99).repeatForever(autoreverses: false))
            .onAppear(){
                self.rotateDen.toggle()
            }
        
        

    }
}

#Preview {
    rotate2D()
}
