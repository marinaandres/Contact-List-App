//
//  ListDetailView.swift
//  Contact List
//
//  Created by Marina Andrés Aragón on 30/4/23.
//

import SwiftUI

struct ListDetailView: View {
    var contact:contactData
    
    var body: some View {
        VStack{
            contact.image.resizable().frame(width: 300, height: 300).clipShape(Circle()).shadow(radius: 4).padding()
            Text(contact.name).font(.largeTitle)
            Text(contact.number).font(.title)
            
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(contact: contactData(name: "Bárbara", image: Image("Bárbara"), number: "678949544")).previewLayout(.fixed(width: 400, height: 60))
    }
}
