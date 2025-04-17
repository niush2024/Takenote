//
//  DetailNoteView.swift
//  Takenoteapp
//
//  Created by StudentPM on 4/17/25.
//

import SwiftUI

struct DetailNoteView: View {
    var note : Note
    
    var body: some View {
        VStack{
            Text("\(note.content)")
                .frame(width: 335, height: 600, alignment: .topLeading)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding(.horizontal)
        }
        .navigationTitle("\(note.title)")
    }
    
        
}
    

#Preview {
    DetailNoteView(note:Note(title: "", content: ""))
}
