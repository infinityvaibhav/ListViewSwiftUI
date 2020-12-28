//
//  HikeDetailView.swift
//  PopulateListView
//
//  Created by 1389028 on 16/12/20.
//

import SwiftUI

struct HikeDetailView: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }.navigationBarTitle(hike.name, displayMode: .inline)
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: Hike(name: "vaibhav", imageURL: "passport", miles: 10.0))
    }
}
