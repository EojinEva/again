//
//  MyTableViewController.swift
//  again
//
//  Created by t2023-m0099 on 11/17/23.
//

import UIKit

class MyTableViewController: UIViewController {
    

    @IBOutlet weak var myTableView: UITableView!
    
    let friendNames : [String] = ["Henry", "Leeo", "Jay", "Key"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .purple
        
        myTableView.delegate = self
        myTableView.dataSource = self
        // tableview, datasource가 controller에게 본인을 위임. tableview와 controller가 연결되었다고 생각하기
    }
    
}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendNames.count // 이렇게 하면 건드릴 코드를 하나 더 줄일 수 있음
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        cell.textLabel?.text = friendNames[indexPath.row]
        //indexPath가 friendNames의 0...x를 담고 있기 때문에 하나하나 [0], [1]을 넣을 필요 없이 indexPath를 사용한다. row와 section 중에서 row가 section에 포함되어 있으므로 row를 사용.
        return cell
    }
    
}


//1. 테이블뷰 그리기: 라이브러리에서 선택하여 드래그앤드롭>색을 넣어 연결을 확인. 셀을 추가 후 델리게이트와 데이터 소스 사용. 컨트롤러와 테이블 뷰를 연결하여 원하는데로 그림. 그린 후 데이터를 가져와서 그린다.
