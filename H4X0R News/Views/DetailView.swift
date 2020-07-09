//
//  DetailView.swift
//  H4X0R News
//
//  Created by Alva Yonara Puramandya on 08/07/20.
//  Copyright © 2020 Alva Yonara Puramandya. All rights reserved.
//

import SwiftUI

import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

