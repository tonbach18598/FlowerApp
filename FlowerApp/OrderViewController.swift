//
//  OrderViewController.swift
//  FlowerApp
//
//  Created by Macbook Pro on 21/12/2020.
//

import UIKit

class OrderViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBAction func onConfirmClick(_ sender: Any) {
        if let url = URL(string: "tel://\(0123456789)"),
           UIApplication.shared.canOpenURL(url) {
              if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:], completionHandler:nil)
               } else {
                   UIApplication.shared.openURL(url)
               }
           } else {
                    // add error message here
           }
    }
    @IBOutlet weak var tvList: UITableView!
    var flowers = ["flower1", "flower2", "flower3"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.flowers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tvList.dequeueReusableCell(withIdentifier: "myCell") as! CustomOrderCell
        cell.ivImage.image = UIImage(named: self.flowers[indexPath.row])
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
