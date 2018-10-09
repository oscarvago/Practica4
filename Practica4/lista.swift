//
//  ViewController.swift
//  Practica4
//
//  Created by OscarVago on 18/09/18.
//  Copyright © 2018 DosDesign. All rights reserved.
//

var tasks = [Tasks]()
var tkask: Tasks?

import UIKit

class lista: UIViewController, UITableViewDataSource, UITableViewDelegate {


    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")
        cell?.textLabel?.text = tasks[indexPath.row].field
        cell?.detailTextLabel?.text = tasks[indexPath.row].dater
        
        return cell!
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

