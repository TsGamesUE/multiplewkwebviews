//
//  viewHome.swift
//  CircleBar_Example
//
//  Created by ts on 22.12.19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import WebKit

class viewHome: UIViewController, WKUIDelegate, WKNavigationDelegate {

    weak var navigationDelegate: WKNavigationDelegate?
    
    static let processPool = WKProcessPool()
    
    @IBOutlet var webViewHome: WKWebView!
    
     override func loadView() {
           let webConfiguration = WKWebViewConfiguration()
         webConfiguration.processPool = viewHome.processPool
           webViewHome = WKWebView(frame: .zero, configuration: webConfiguration)
           webViewHome.uiDelegate = self
           webViewHome.configuration.preferences.javaScriptEnabled = true
           //webViewHome.configuration.preferences.javaEnabled = true
           
           view = webViewHome
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://lieferworld.de/R1-")
        let request = URLRequest(url: url!)
        webViewHome.configuration.preferences.javaScriptEnabled = true
        //webViewHome.configuration.preferences.javaEnabled = true
        webViewHome.load(request)
    }
    
    
        
        


    @IBAction func GoBackHome(_ sender: Any) {

        
        if webViewHome.canGoBack {
        
            webViewHome.goBack()
            
        }
        
    }
    
    
    
    
    
    @IBAction func GoForwardHome(_ sender: Any) {
    
    
        if webViewHome.canGoForward {
        
            webViewHome.goForward()
            
        }
        
    }
    
    
}
