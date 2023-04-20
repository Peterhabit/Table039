//
//  ViewController.swift
//  Table039
//
//  Created by 소프트웨어컴퓨터 on 2023/04/20.
//

import UIKit

let food = ["1 김치찌개", "2 곱창", "3 족발", "4 돈까스"]
let fish = ["갈치구이", "고등어 구이", "임연수 구이", "가자미 구이"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        cell.myLabel.text = food[indexPath.row]
        cell.Name.text = fish[indexPath.row]
        print(indexPath.description, terminator: "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.description,terminator: "")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }


}

