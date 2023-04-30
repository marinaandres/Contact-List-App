//
//  ListView.swift
//  Contact List
//
//  Created by Marina Andrés Aragón on 30/4/23.
//

import SwiftUI

private let contacts = [    contactData(name: "Carlos", image: Image("Carlos"), number: "678949544"),
                            contactData(name: "Francisco", image: Image( "Francisco"), number: "690117919"),
                            contactData(name: "Jorge", image: Image("Jorge"), number: "689234654"),
                            contactData(name: "Luisa", image: Image("Luisa"), number: "679023456")
                            ,
                            contactData(name: "Carmen", image: Image("Carmen"), number: "634253182"),
                            contactData(name: "Bárbara", image: Image("Bárbara"), number: "648314324")]
struct ListView: View {
    var body: some View {
        NavigationView {
            List (contacts,id: \.name) { contact in
                NavigationLink (destination: ListDetailView(contact: contact)) {
                    HStack {
                        contact.image.resizable().frame(width: 50, height: 50).clipShape(Circle()).shadow(radius: 4)
                        VStack(alignment: .leading) {
                            Text(contact.name)
                                .font(.headline)
                        }
                    }
                }.navigationTitle("Contactos")
            }
        }
    }
        
        struct ListView_Previews: PreviewProvider {
            static var previews: some View {
                ListView()
            }
        }
        
    }
    

