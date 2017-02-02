//
//  ViewController.swift
//  SimpleBrowser
//
//  Created by Carlos Sanchez on 1/6/17.
//  Copyright © 2017 Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var navigationTitle: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let myURL: URL = URL(string: "https://www.youtube.com"){
            let newURLRequest: URLRequest = URLRequest(url: myURL)
            webView.loadRequest(newURLRequest)
            navigationTitle.topItem?.title = myURL.host
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goBack(_ sender: UIBarButtonItem) {
        if webView.canGoBack{
            webView.goBack()
        }
    }
    
    @IBAction func goForward(_ sender: UIBarButtonItem) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    
    @IBAction func reloadPage(_ sender: UIBarButtonItem) {
        webView.reload()
    }
    
    @IBAction func stopLoading(_ sender: UIBarButtonItem) {
        webView.stopLoading()
    }
}

