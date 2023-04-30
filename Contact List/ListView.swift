//
//  ListView.swift
//  Contact List
//
//  Created by Marina Andrés Aragón on 30/4/23.
//

import SwiftUI

private let contacts = [    contactData(name: "Carlos", image: Image(systemName: "Contacto")),
                            contactData(name: "Francisco", image: Image(systemName: "Contacto")),
                            contactData(name: "Jorge", image: Image(systemName: "Contacto")),
                            contactData(name: "Luisa", image: Image(systemName: "Contacto"))
                            ,
                            contactData(name: "Carmen", image: Image(systemName: "Contacto")),
                            contactData(name: "Bárbara", image: Image(systemName: "Contacto"))]

struct ListView: View {
    var body: some View {
        List (contacts,id: \.name) { contact in
            RowView(contact: contact)
            
        }
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
    
}
