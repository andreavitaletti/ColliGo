//
//  ViewController.swift
//  Colligo
//
//  Created by b00leant on 3/28/20.
//  Copyright © 2020 b00leant. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, UIScrollViewDelegate, WKUIDelegate,UIGestureRecognizerDelegate {
    
    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = webView
        
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.allowsInlineMediaPlayback = true
        
        webConfiguration.preferences.javaScriptCanOpenWindowsAutomatically = true
        webConfiguration.preferences.javaScriptEnabled = true
        //webView = WKWebView(frame: self.view.frame, configuration: webConfiguration)
        
        webView.navigationDelegate = self
        
        webView.scrollView.delegate = self
        webView.navigationDelegate = self
        webView.scrollView.bounces = false
        //webView.uiDelegate = self
        
        if let url = URL(string: "https://colligo.shop") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        // Do any additional setup after loading the view.
    }
    
    // Disable zoom events and gestures
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        scrollView.pinchGestureRecognizer?.isEnabled = false
    }
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return nil
    }


}

