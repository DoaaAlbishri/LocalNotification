//
//  TableViewController.swift
//  Local Notification
//
//  Created by admin on 20/12/2021.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var items: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}
    extension TableViewController: UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items!.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "actionCell", for: indexPath)
            
            cell.textLabel?.text = items![indexPath.row]
            cell.textLabel?.textColor = UIColor.green
            
            return cell
        }
    }
