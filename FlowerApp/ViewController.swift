//
//  ViewController.swift
//  FlowerApp
//
//  Created by Macbook Pro on 21/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func onHomeClick(_ sender: Any) {
        handleHomeClick()
    }
    @IBAction func onOrderClick(_ sender: Any) {
        handleOrderClick()
    }
    @IBAction func onSupportClick(_ sender: Any) {
        handleSupportClick()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView() {
        imageView.image = UIImage(named: "flower")
    }
    
    func handleHomeClick() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let homeViewController = storyBoard.instantiateViewController(withIdentifier: "homeView") as! HomeViewController
        self.present(homeViewController, animated:true, completion:nil)
    }
    
    func handleOrderClick() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let orderViewController = storyBoard.instantiateViewController(withIdentifier: "orderView") as! OrderViewController
        self.present(orderViewController, animated:true, completion:nil)
    }
    
    func handleSupportClick() {
        if let url = URL(string: "https://www.google.com/") {
                if UIApplication.shared.canOpenURL(url) {
                    if #available(iOS 10.0, *) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    } else {
                        UIApplication.shared.openURL(url)
                    }
                }
            }
    }
}

