// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    var webView: WKWebView!
    var bridge: OCIJSBridge!
    
    override func loadView() {
        self.view = NSView(frame: NSRect(x: 0, y: 0, width: 1400, height: 900))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupWebView()
        setupBridge()
        loadDashboard()
    }
    
    func setupWebView() {
        let config = WKWebViewConfiguration()
        config.preferences.javaScriptEnabled = true
        
        // Allow file access
        config.preferences.setValue(true, forKey: "allowFileAccessFromFileURLs")
        
        // Enable developer tools
        if #available(macOS 13.3, *) {
            config.preferences.isElementFullscreenEnabled = true
        }
        
        webView = WKWebView(frame: view.bounds, configuration: config)
        webView.autoresizingMask = [.width, .height]
        webView.navigationDelegate = self
        
        // Dark mode support
        webView.configuration.preferences.setValue(
            "{\"enabled\":true}",
            forKey: "darkModeEnabled"
        )
        
        view.addSubview(webView)
    }
    
    func setupBridge() {
        bridge = OCIJSBridge(webView: webView)
        
        // Register message handlers
        webView.configuration.userContentController.add(
            bridge,
            name: "ociAPICall"
        )
        webView.configuration.userContentController.add(
            bridge,
            name: "ociAuth"
        )
    }
    
    func loadDashboard() {
        // Load local HTML file from app bundle
        if let htmlPath = Bundle.main.path(
            forResource: "index",
            ofType: "html",
            inDirectory: "WebApp"
        ) {
            let url = URL(fileURLWithPath: htmlPath)
            webView.loadFileURL(url, allowingReadAccessTo: url)
        } else {
            // Fallback: load from development path
            let devPath = "/Users/denn/Desktop/OCIMain/Oracle-SDK/OCI-Tenant-Dashboard/WebApp/index.html"
            let url = URL(fileURLWithPath: devPath)
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
    }
}

// MARK: - WKNavigationDelegate

extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Dashboard loaded successfully")
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("Failed to load dashboard:", error.localizedDescription)
    }
}
