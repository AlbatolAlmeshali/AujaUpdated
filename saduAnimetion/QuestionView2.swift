//
//  QuestionView2.swift
//  AujaApp
//
//  Created by Shatha Ajjaj on 26/03/1445 AH.
//

import SwiftUI

struct QuestionView2: View {
    
    @State private var timeRemaining = 10 // Initial countdown time
    @State private var navigateToQuestion2 = false // Control the navigation
    @State private var timerValues: [Int] = [10] // Move timerValues to the outer scope
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                HStack {
                    CountdownCircleView(timeRemaining: timeRemaining, timerValues: $timerValues) // Pass timerValues here
                    Spacer()
                    Circle()
                        .fill(Color.orange)
                                         .frame(width: 60, height: 60)
                                         .overlay(
                                             Text("2")
                                                 .font(.title)
                                                 .foregroundColor(.white)
                                         )
//                    Text("#Answers")
//                        .fontWeight(.bold)
                }
                ProgressBar(progress: 70)
                VStack(alignment: .center, spacing: 20) {
                    Text("2 out of 10")
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.heavy)
                    Text("What is the famous dish in Saudi Arabia?")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.gray)
                    
                    AnswerRow(answer: Answer(text: "Fried peas", isCorrect: false))
                    AnswerRow2(answer: Answer(text: "Kabsa", isCorrect: true))
                    AnswerRow3(answer: Answer(text: "Shawerma.", isCorrect: false))
                    AnswerRow4(answer: Answer(text: "Falafel", isCorrect: false))
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//            .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
//            .background(Color.white)
            .navigationBarHidden(true)
            .onReceive(timer) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                    timerValues = [timeRemaining] // Update timerValues with the current timeRemaining
                } else if !navigateToQuestion2 {
                    navigateToQuestion2 = true
                }
            }
            .background(
                NavigationLink("", destination: QuestionView3(), isActive: $navigateToQuestion2)
            )
            
            
        }
        .navigationBarHidden(true)
    }
    
    struct CountdownCircleView: View {
        var timeRemaining: Int
        @Binding var timerValues: [Int] // Add timerValues as a binding
        
        var body: some View {
            ZStack {
                Circle()
                    .trim(from: 0.0, to: 1.0)
                    .stroke(Color("timer"), lineWidth: 6)
                    .frame(width: 60, height: 60)
                    .rotationEffect(.degrees(-90)) // Rotate it counter-clockwise
                
                ForEach(timerValues, id: \.self) { value in
                    Circle()
                        .trim(from: 0.0, to: CGFloat(value) / 10.0)
                        .stroke(timeRemaining <= 2 ? Color.red : Color.orange, lineWidth: 6) // Change color conditionally
                        .frame(width: 60, height: 60)
                        .rotationEffect(.degrees(-90))
                }
                
                Text("\(timeRemaining)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
            }
        }
    }
}


#Preview {
    QuestionView2()
}
