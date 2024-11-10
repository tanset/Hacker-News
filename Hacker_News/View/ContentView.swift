//
//  ContentView.swift
//  Hacker_News
//
//  Created by 張皓宇 on 2024/11/8.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            networkManager.fetchDate()
        }
    }
}




#Preview {
    ContentView()
}
