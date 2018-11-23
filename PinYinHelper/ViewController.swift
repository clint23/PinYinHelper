//
//  ViewController.swift
//  PinYinHelper
//
//  Created by 刘剑云 on 2018/11/23.
//  Copyright © 2018 ct. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    var froms: [TestModel] = []
    var datas: [Transform<TestModel>] = [] {
        didSet { tableView.reloadData() }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBasicData()
    }
    
    private func initBasicData() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: String(describing: UITableViewCell.self))
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: String(describing: UITableViewHeaderFooterView.self))
        froms = [
            TestModel("楚柔", 25),
            TestModel("欧阳文", 21),
            TestModel("段光野", 30),
            TestModel("夏缘薇", 38),
            TestModel("秦凯", 25),
            TestModel("北一江", 27),
            TestModel("陆寒江", 27),
            TestModel("端星遥", 17),
            TestModel("段光阳", 18),
            TestModel("段光明", 25),
            TestModel("楚天佑", 28),
            TestModel("邱若惜", 30),
            TestModel("楚文隽", 21),
            TestModel("邱明勋", 22),
            TestModel("东哥", 30),
            TestModel("段轩宇", 30)
        ]
    
    }

    @IBAction func requestData(_ sender: UIBarButtonItem) {
        datas = froms.pinyin{ $0.name }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas[section].values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self))
        let data = datas[indexPath.section].values[indexPath.row]
        cell?.textLabel?.text = data.name
        cell?.detailTextLabel?.text = "\(data.age)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: String(describing: UITableViewHeaderFooterView.self))
        header?.textLabel?.text = datas[section].index
        return header!
    }
}

