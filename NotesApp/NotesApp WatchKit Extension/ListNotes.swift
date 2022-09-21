//
//  ListNotes.swift
//  NotesApp WatchKit Extension
//
//  Created by SBSCO3 on 21/09/22.
//

import SwiftUI

struct ListNotes: View {
    
    @State private var notes: [Note] = [Note(title: "Uno"),
                           Note(title: "dos"), Note(title: "tres")]
    
    var body: some View {
      
        
        List{
            
            ForEach(0..<notes.count, id: \.self) {
                i in
                
                NavigationLink(
                    destination: DetailNote(note: notes[i]),
                    
                    label: {
                        
                        Text(notes[i].title).lineLimit(1)
                    })
                
//                Text("\(notes[i].title) - \(notes[i].creationDate )").lineLimit(1)
            }
            
            .onDelete(perform: delete )
            
            
        }
        
        
    }
    
    
    func delete(offsets: IndexSet){
        
        withAnimation{
            
            notes.remove(atOffsets: offsets)

            
        }
        
    }
    
    
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
