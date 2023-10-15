//
//  Answer.swift
//  AujaApp
//
//  Created by Shatha Ajjaj on 26/03/1445 AH.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID() // Setting the UUID ourselves inside of the model, because API doesn't return a unique ID for each answer
    var text: AttributedString
    var isCorrect: Bool
}




