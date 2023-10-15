//
//  AnswerRow2.swift
//  AujaApp
//
//  Created by Shatha Ajjaj on 27/03/1445 AH.
//

import SwiftUI

struct AnswerRow2: View {
    //@EnvironmentObject var triviaManager: TriviaManager
    var answer: Answer
    @State private var isSelected = false

    // Custom colors
    var green = Color(hue: 0.437, saturation: 0.711, brightness: 0.711)
    var red = Color(red: 0.71, green: 0.094, blue: 0.1)
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
                
            
            if isSelected {
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(isSelected ? Color("AccentColor") : .gray)
        .background(.white)
        .cornerRadius(10)
        .border(Color("AnswerRow2"), width: 2)
        .shadow(
            color: isSelected ? (answer.isCorrect ? Color.green : Color.red) : .clear,
            radius: isSelected ? 5 : 0,
            x: isSelected ? 0.5 : 0,
            y: isSelected ? 0.5 : 0
        )

        .onTapGesture {
                isSelected = true
            }
        }
    }


struct AnswerRow2_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect:  false))
    }
}


