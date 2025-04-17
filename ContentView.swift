//
//  ContentView.swift
//  Takenoteapp
//
//  Created by StudentPM on 4/4/25.
//

import SwiftUI
//
//struct Note{
//    var title: String
//    var content: String
//}

struct ContentView: View {
    @State private var myNotes: [Note] = []
    @State private var title = ""
    @State private var content = ""
    
    var body: some View {
        NavigationView{
            VStack {
                VStack{
                    List{
                        ForEach(myNotes.indices, id:\.self){ i in
                            NavigationLink(destination: DetailNoteView(note:myNotes[i]), label: {
                                Text("\(myNotes[i].title)\n\(myNotes[i].content)")
                                VStack{
                                    
                                }
                                
                                
                            })
                        }
                    }
                }
                VStack{
                    Spacer()
                    NavigationLink(destination:  NewNoteView(myNotes: $myNotes)){
                        Text("Add Task")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.top, 45)
                            .padding(.bottom, 38)
                            .background(Color.blue)
                        // .cornerRadius(12)
                            .font(.title)
                    }
                }
            }
            .navigationTitle("Notes")
        }
        
    }
}


#Preview {
    ContentView()
}
