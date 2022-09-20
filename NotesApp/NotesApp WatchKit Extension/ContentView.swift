//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by SBSCO3 on 11/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var note = Note(title: "Una nota")
        
        
        Text("\(note.title) - \(note.creationDate)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
