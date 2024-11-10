//
//  DetailView.swift
//  Hacker_News
//
//  Created by 張皓宇 on 2024/11/9.
//

import SwiftUI

struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url);
    }
}

#Preview {
    DetailView(url: "https://www.google.com ")
}

