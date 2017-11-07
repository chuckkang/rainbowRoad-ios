//
//  ViewController.swift
//  RainbowRoad-ios
//
//  Created by Chucks Mac Book on 11/6/17.
//  Copyright © 2017 Chucks Mac Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rainbowTable: UITableView!
    
    let bgColor: [UIColor] = [UIColor.red, UIColor.black, UIColor.blue, UIColor.green, UIColor.yellow, UIColor.purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rainbowTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rainbowCell", for: indexPath)
        tableView.rowHeight = 120
        cell.backgroundColor = bgColor[indexPath.row]

        return cell
    }
    
    
}
