//
//  RowView.swift
//  Contact List
//
//  Created by Marina Andrés Aragón on 30/4/23.
//

import SwiftUI

struct RowView: View {
    
    var contact:contactData
    
    var body: some View {
        HStack(){
            contact.image.resizable().frame(width: 55, height: 55).clipShape(Circle()).shadow(radius: 4).padding()
            VStack(alignment: .leading){
                Text(contact.name )
                    .font(.title)
            }
            Spacer()
        }
            
    }
    }
    
    struct RowView_Previews: PreviewProvider {
        static var previews: some View {
            RowView(contact: contactData(name: "Carlos", image: Image(systemName: "Contacto"), number: "657324183")).previewLayout(.fixed(width: 400, height: 60))
                                                                                        
        }
    }

