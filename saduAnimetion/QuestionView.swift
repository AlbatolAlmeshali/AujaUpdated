//
//  QuestionView.swift
//  AujaApp
//
//  Created by Shatha Ajjaj on 26/03/1445 AH.
//



import SwiftUI

struct QuestionView: View {
    @State private var selectedAnswer: Answer?
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
                                             Text("3")
                                                 .font(.title)
                                                 .foregroundColor(.white)
                                         )
                                         
                }
                ProgressBar(progress: 35)
                VStack(alignment: .center, spacing: 20) {
                    Text("1 out of 10")
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.heavy)
                    Text("What is the name of the city with largest population?")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.gray)
                    
                    AnswerRow(answer: Answer(text: "Riyadh", isCorrect: true))
                    AnswerRow2(answer: Answer(text: "Jeddah", isCorrect: false ))
                    AnswerRow3(answer: Answer(text: "Mecca", isCorrect: false ))
                    AnswerRow4(answer: Answer(text: "Altaief", isCorrect: false))
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
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
                NavigationLink("", destination: QuestionView2(), isActive: $navigateToQuestion2)
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

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}

// nnnnnneeeeewww

