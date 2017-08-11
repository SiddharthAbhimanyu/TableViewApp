//
//  TableViewController.swift
//  TableViewApp
//
//  Created by Siddharth Eswaramoorthy on 8/11/17.
//  Copyright © 2017 Siddharth Eswaramoorthy. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var numbersTable: UITableView!
    var data : [String] = ["one", "two", "three", "four", "five"]
    var header : [String] = ["Header1", "Header2", "Header3", "Header4", "Header5"]
    let cellIdentifier = "NumberCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        numbersTable.register(TableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        numbersTable.dataSource = self
        numbersTable.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return header.count;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        cell.data?.text = data[indexPath.row]
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell;
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row)")
    }
}
