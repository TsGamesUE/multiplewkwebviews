//
//  viewShopping.swift
//  CircleBar_Example
//
//  Created by ts on 22.12.19.
//  Copyright © 2019 Lieferworld. All rights reserved.
//
import UIKit
import WebKit


class viewShopping: UIViewController, WKUIDelegate, WKNavigationDelegate {

    
    weak var navigationDelegate: WKNavigationDelegate?
    
    
    @IBOutlet var webViewShopping: WKWebView!
    
     override func loadView() {
           let webConfiguration = WKWebViewConfiguration()
           webViewShopping = WKWebView(frame: .zero, configuration: webConfiguration)
           webViewShopping.uiDelegate = self
           //webViewShopping.configuration.preferences.javaEnabled = true
           webViewShopping.configuration.preferences.javaScriptEnabled = true
        
           view = webViewShopping
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://lieferworld.de/warenkorb.php")
        let request = URLRequest(url: url!)
        webViewShopping.configuration.preferences.javaScriptEnabled = true
        //webViewShopping.configuration.preferences.javaEnabled = true
        
        webViewShopping.load(request)
    }
    
    
        
    
    
    @IBAction func goBackShoppingCart(_ sender: Any) {
    

        if webViewShopping.canGoBack {
        
            webViewShopping.goBack()
            
        }
        
    }
    
    
    
    @IBAction func goForwardShoppingCart(_ sender: Any) {
    
        if webViewShopping.canGoForward {
        
            webViewShopping.goForward()
            
        }
        
    }
    
}
