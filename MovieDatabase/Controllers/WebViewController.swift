//
//  WebViewController.swift
//  MovieDatabase
//
//  Created by Anastasiya Omak on 27/11/2023.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    var urlString: String = String()
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Web"
        guard let url = URL(string: urlString) else { return }
        
        webView.load(URLRequest(url: url))
    }
}
