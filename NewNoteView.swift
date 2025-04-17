//
//  NewNoteView.swift
//  Takenoteapp
//
//  Created by StudentPM on 4/4/25.
//

import SwiftUI
struct Note {
    var title : String
    var content : String
}
struct NewNoteView: View {
    @State var title: String = ""
    @State var content: String = ""
    @Binding var myNotes: [Note]
    
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("New Note")
                        .padding()
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                // NavigationLink(destination: NewNoteView ()){
                
                
                
                TextField("Title", text: $title)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                //                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                
                
                TextEditor(text: $content)
                    .frame(height: 430)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                
                Spacer()
                
                Button(action: {addNote()})
                {
                    Text("Add Note")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
            
            .padding()
            Spacer()
            
            
        }
    }
    
    func addNote(){
        var myNote: Note = Note(title: title, content: content)
        myNotes.append(myNote)
    }
}

#Preview {
    NewNoteView(myNotes: .constant([]))
}

//                    NavigationLink(destination: ContentView ().navigationBarBackButtonHidden(true)){
//                        Text("Add Note")
//                            .padding()
//                            .foregroundColor(.white)
//                        // .padding(.horizontal, 20)
//                        //.padding(.vertical, 10)
//                        // .frame(maxWidth: .infinity)
//                            .background( Color.blue)
//                            .cornerRadius(8)
//
//                    }
