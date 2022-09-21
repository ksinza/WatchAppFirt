//
//  Note.swift
//  NotesApp WatchKit Extension
//
//  Created by SBSCO3 on 20/09/22.
//

import SwiftUI

//Codable : to work json.. save and get data

struct Note: Codable, Identifiable{
    var id: UUID
    
    var  title: String
    
    var creationDate: String
    
    
    init(title: String){
        
        self.id = UUID()
        self.title = title
        
        let date = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .long
        
        dateFormatter.timeStyle = .medium
        
        
        
        self.creationDate = dateFormatter.string(from: date)
        
        
    }
    
    
    
}
