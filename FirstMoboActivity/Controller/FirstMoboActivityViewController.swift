//
//  FirstMoboActivityViewController.swift
//  FirstMoboActivity
//
//  Created by Renato Vieira on 3/3/21.
//

import UIKit

class FirstMoboActivityViewController: UIViewController {
    public var firstMoboActivityHeaderViewAndComponents: FirstMoboActivityHeaderViewAndComponents?
    
    public var nameUser = "Renato"
    public var amount   = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 247/255, green: 235/255, blue: 232/255, alpha: 1)
        
        self.showView()
    }
    
    func showView() {
        firstMoboActivityHeaderViewAndComponents = FirstMoboActivityHeaderViewAndComponents(frame: CGRect(x:      0,
                                                                                                          y:      0,
                                                                                                          width:  self.view.frame.width,
                                                                                                          height: self.view.frame.height))
        guard let firstMoboActivityHeaderView = firstMoboActivityHeaderViewAndComponents else { return }
        
        self.view.addSubview(firstMoboActivityHeaderView)
        
        firstMoboActivityHeaderView.configure(nameUser: nameUser, amount: amount)
    }
}

