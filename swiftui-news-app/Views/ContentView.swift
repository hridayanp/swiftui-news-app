//
//  ContentView.swift
//  swiftui-news-app
//
//  Created by Hridayan Phukan on 06/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            })
            .navigationTitle("H4X0R News")
        }
        .onAppear() {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
