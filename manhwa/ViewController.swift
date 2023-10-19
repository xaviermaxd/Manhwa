//
//  ViewController.swift
//  manhwa
//
//  Created by MAC44 on 12/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    let manhwas:[Manhwa] = [
        
        Manhwa(image: "top1", title: "Pearl Boy", description: "Yun Minguy", state: "Terminado", type: "BL"),
        Manhwa(image: "top4", title: "Operation Love so Pure", description: "Jung Jey", state: "En emision", type: "Drama"),
        Manhwa(image: "top5", title: "Love is Illusion", description: "Aysa Yerly", state: "Terminado", type: "BL"),
        Manhwa(image: "top2", title: "Pintor nocturno", description: "Park Do-Han", state: "En emision", type: "BL"),
        Manhwa(image: "top3", title: "Origen de las Especies", description: "Suyin Park", state: "En emision", type: "BL"),
        Manhwa(image: "top", title: "Badthinking", description: "Ming Yun", state: "Terminado", type: "Yuri")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manhwas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ManhwaTableView
        
        let manhwa = manhwas[indexPath.row]
        cell.mimage.image = UIImage(named: manhwa.image)
        cell.mTitle.text = manhwa.title
        cell.mDescription.text = manhwa.description
        cell.mState.text = manhwa.state
        cell.mType.text = manhwa.type
        
        return cell
    }
    
}

