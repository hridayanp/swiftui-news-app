//
//  DetailView.swift
//  swiftui-news-app
//
//  Created by Hridayan Phukan on 06/12/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

