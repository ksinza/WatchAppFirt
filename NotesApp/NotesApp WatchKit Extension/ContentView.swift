//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by SBSCO3 on 11/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       // Color.purple.edgesIgnoringSafeArea(.all).navigationBarHidden(true)
//        var note = Note(title: "Una nota")
//
//
//        Text("\(note.title) - \(note.creationDate)")
//            .padding()
       // Color.purple
        ZStack(){
            Color(UIColor.purple).edgesIgnoringSafeArea(.all).navigationBarHidden(true)
            VStack{
                
                NavigationLink("Agregar Nota", destination: AddNote())
                NavigationLink("Listar Notas", destination: ListNotes())
                
            }
        }
      
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
       
      
        
//        .navigationTitle("Notes App")
    
        
    }
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
