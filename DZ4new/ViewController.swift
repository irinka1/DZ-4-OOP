//
//  ViewController.swift
//  DZ4new
//
//  Created by Ирина on 05.05.2018.
//  Copyright © 2018 Ирина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Diagonal: UILabel!
    @IBOutlet weak var CountOfChannel: UILabel!
    @IBOutlet weak var Model: UILabel!
    @IBOutlet weak var CountOfColor: UILabel!
    
    @IBAction func Destroy(_ sender: Any) {
        newTV2.destroy()
        newUI()
    }
    
    @IBAction func DisImprove(_ sender: Any) {
        newTV2.disimprove()
        newUI()
    }
    
    @IBAction func Improve(_ sender: Any) {
        newTV2.improve()
        newUI()
    }
    
    
    let newTV2 = TVset (model: "Frt", name: "TV2", diagonal: 45, countOfChannel: 123, countOfColor: 3456, someDetail: "dfg")

    func newUI(){
        Name.text = newTV2.name
        Diagonal.text = "\(newTV2.diagonal)"
        CountOfChannel.text = "\(newTV2.countOfChannel)"
        Model.text = newTV2.model
        CountOfColor.text = "\(newTV2.countOfColor)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

