//
//  ViewController.swift
//  again
//
//  Created by t2023-m0099 on 11/17/23.
//

import UIKit

struct Family {
    let myName : String
    let myBestFriendName : String
    let nextFriendName : String
    let myBrother : String
}

class ViewController: UIViewController {
    
    
    let friendNames : [String] = ["Henry", "Leeo", "Jay", "Key"]
    let koreanNames : [String:String] = ["Henry":"헨리", "Leeo":"리이오", "Jay":"재이"]
    var count : Int = 0
    let friend = Family(myName: "Henry2", myBestFriendName: "Leeo2", nextFriendName: "Jay2", myBrother: "Key")
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var myBestFriendName: UILabel!
    @IBOutlet weak var nextFriendName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func didTapButton(_ sender: Any) {
        nameLabel.text = friend.myName
        myBestFriendName.text = friend.myBestFriendName
        nextFriendName.text = friend.nextFriendName
    }
}

