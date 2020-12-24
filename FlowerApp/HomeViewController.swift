//
//  HomeViewController.swift
//  FlowerApp
//
//  Created by Macbook Pro on 21/12/2020.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView(){
        let url = URL (string: "https://www.google.com/")
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
    }
}
