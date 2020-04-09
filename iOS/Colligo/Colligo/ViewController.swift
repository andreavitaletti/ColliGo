//
//  ViewController.swift
//  Colligo
//
//  Created by b00leant on 3/28/20.
//  Copyright © 2020 b00leant. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, UIScrollViewDelegate, WKUIDelegate, UIGestureRecognizerDelegate, UIWebViewDelegate {
    @IBOutlet weak var loading: UIActivityIndicatorView!
    var webView = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loading.startAnimating()
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.allowsInlineMediaPlayback = true
        
        webConfiguration.preferences.javaScriptCanOpenWindowsAutomatically = true
        webConfiguration.preferences.javaScriptEnabled = true
        webView.addGestureRecognizer(DisableDoubleTapRecognizer())
        
        webView.navigationDelegate = self
        
        webView.scrollView.delegate = self
        webView.navigationDelegate = self
        webView.scrollView.bounces = false
        
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
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!)
    {
        loading.isHidden = true;
        self.view = webView
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return nil
    }
}

class DisableDoubleTapRecognizer : UITapGestureRecognizer, UIGestureRecognizerDelegate{
    override init(target: Any?, action: Selector?) {
        super.init(target: target, action: action)
    }
    
    init() {
        super.init(target:nil, action: nil)
        self.numberOfTapsRequired = 2;
        self.delegate = self;
    }
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true;
    }
}
