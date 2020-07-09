//
//  WebView.swift
//  H4X0R News
//
//  Created by Alva Yonara Puramandya on 08/07/20.
//  Copyright © 2020 Alva Yonara Puramandya. All rights reserved.
//

import Foundation

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                
                uiView.load(request)
            }
        }
    }
}
