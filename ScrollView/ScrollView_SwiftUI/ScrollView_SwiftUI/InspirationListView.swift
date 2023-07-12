//
//  InspirationListView.swift
//  ScrollView_SwiftUI
//
//  Created by VT on 7/12/23.
//

import SwiftUI

struct InspirationListView: View {
    @State private var inspirations = Inspiration.createInspirations()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(inspirations) { inspiration in
                    InspirationRowView(inspiration: inspiration)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            }
            .listStyle(.plain)
            .navigationTitle("Inspirations")
        }
    }
}


struct InspirationListView_Previews: PreviewProvider {
    static var previews: some View {
        InspirationListView()
    }
}