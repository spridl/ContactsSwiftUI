//
//  ContactRowView.swift
//  ContactsSwiftUI
//
//  Created by Тимур on 26.05.2022.
//

import SwiftUI

struct ContactRowView: View {
    let imageName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(imageName: "tray", text: Person.getContactList()[0].phoneNumber)
    }
}
