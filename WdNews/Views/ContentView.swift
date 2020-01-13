//
//  ContentView.swift
//  WdNews
//
//  Created by Yassine AADOULI on 1/12/20.
//  Copyright © 2020 Yassine AADOULI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
            NavigationView {
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailsView(url: post.url)) {
                        VStack(alignment: .leading){
                            Text(post.title)
//                                .font(.title)
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .font(.custom("Futura", size: 20))
                                .lineLimit(2)
                            Text(post.url ?? "")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .lineLimit(nil)
                        }
                    }
                }.navigationBarTitle("WDNews App")
            }
            .onAppear{
                self.networkManager.fetchData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
