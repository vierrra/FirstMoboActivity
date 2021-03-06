//
//  FirstMoboActivityHeaderViewAndComponents.swift
//  FirstMoboActivity
//
//  Created by Renato Vieira on 3/4/21.
//

import UIKit

class FirstMoboActivityHeaderViewAndComponents: UIView {
    
    public var viewHeader                   : UIView?
    public var oneViewDescriptionProducts   : UIView?
    public var secondViewDescriptionProducts: UIView?
    public var welcomeLabel                 : UILabel?
    public var youSpentTodayLabel           : UILabel?
    public var amountLabel                  : UILabel?
    public var choosePeriod                 : UILabel?
    public var pricePizzaLabel              : UILabel?
    public var priceCocaLabel               : UILabel?
    public var datePizzaLabel               : UILabel?
    public var dateCocaLabel                : UILabel?
    public var todayButton                  : UIButton?
    public var thisWeekButton               : UIButton?
    public var thisMounthButton             : UIButton?
    public var flightButton                 : UIButton?
    public var homeButton                   : UIButton?
    public var dinnerButton                 : UIButton?
    public var carButton                    : UIButton?
    public var buildButton                  : UIButton?
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public func configure(nameUser: String, amount: Int) {
        self.configureHeaderView()
        self.configureLabelsHeaderView(nameUser: nameUser, amount: amount)
        self.configureButtonsHeaderView()
        self.configureButtonsOptions()
        self.configureDescriptionView()
        self.configureLabelsDescriptionView()
    }
    
    fileprivate func configureHeaderView() {
        viewHeader                     = UIView()
        guard let viewHeader           = viewHeader else { return }
        viewHeader.backgroundColor     = UIColor(red: 229/255, green: 75/255, blue: 75/255, alpha: 1)
        viewHeader.layer.cornerRadius  = 55
        viewHeader.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        self.addSubview(viewHeader)
        viewHeader.anchor(top:      self.topAnchor,
                          leading:  self.leadingAnchor,
                          trailing: self.trailingAnchor,
                          size:     CGSize(width:  self.frame.width, height: self.frame.height / 2))
    }
    
    fileprivate func configureLabelsHeaderView(nameUser: String, amount: Int) {
        welcomeLabel                 = UILabel()
        guard let welcomeLabel       = welcomeLabel else { return }
        welcomeLabel.backgroundColor = .clear
        welcomeLabel.textColor       = .white
        welcomeLabel.text            = "Bem vindo, \(nameUser)"
        welcomeLabel.textAlignment   = .center
        welcomeLabel.font            = UIFont(name: "Avenir", size: 35)
        
        self.addSubview(welcomeLabel)
        welcomeLabel.anchor(top:      viewHeader?.topAnchor,
                            leading:  self.leadingAnchor,
                            trailing: self.trailingAnchor,
                            padding:  UIEdgeInsets(top: 40, left: 20, bottom: 0, right: 20))
        
        youSpentTodayLabel = UILabel()
        guard let youSpentTodayLabel       = youSpentTodayLabel else { return }
        youSpentTodayLabel.backgroundColor = .clear
        youSpentTodayLabel.textColor       = .white
        youSpentTodayLabel.text            = "Você gastou hoje"
        youSpentTodayLabel.textAlignment   = .center
        youSpentTodayLabel.font            = UIFont(name: "Avenir", size: 20)
        
        self.addSubview(youSpentTodayLabel)
        youSpentTodayLabel.anchor(top:      welcomeLabel.bottomAnchor,
                                  leading:  self.leadingAnchor,
                                  trailing: self.trailingAnchor,
                                  padding:  UIEdgeInsets(top: 55, left: 20, bottom: 0, right: 20))
        
        
        amountLabel = UILabel()
        guard let amountLabel       = amountLabel else { return }
        amountLabel.backgroundColor = .clear
        amountLabel.textColor       = .white
        amountLabel.text            = "R$ \(amount)"
        amountLabel.textAlignment   = .center
        amountLabel.font            = UIFont(name: "Avenir", size: 35)
        
        self.addSubview(amountLabel)
        amountLabel.anchor(top:      youSpentTodayLabel.bottomAnchor,
                           leading:  self.leadingAnchor,
                           trailing: self.trailingAnchor,
                           padding:  UIEdgeInsets(top: 3, left: 20, bottom: 0, right: 20))
        
        choosePeriod = UILabel()
        guard let choosePeriod       = choosePeriod else { return }
        choosePeriod.backgroundColor = .clear
        choosePeriod.textColor       = .white
        choosePeriod.text            = "ESCOLHER PERÍODO:"
        choosePeriod.textAlignment   = .center
        choosePeriod.font            = UIFont(name: "Avenir", size: 15)
        
        self.addSubview(choosePeriod)
        choosePeriod.anchor(top:     amountLabel.bottomAnchor,
                           leading:  self.leadingAnchor,
                           trailing: self.trailingAnchor,
                           padding:  UIEdgeInsets(top: 40, left: 20, bottom: 0, right: 20))
    }
    
    fileprivate func configureButtonsHeaderView() {
        todayButton                  = UIButton()
        guard let todayButton        = todayButton else { return }
        todayButton.backgroundColor  = .clear
        todayButton.titleLabel?.font = UIFont(name: "Avenir", size: 16)
        
        todayButton.setTitleColor(.white, for: .normal)
        todayButton.setTitle("Hoje", for: .normal)
        
        self.addSubview(todayButton)
        todayButton.anchor(leading: self.leadingAnchor,
                           bottom:  viewHeader?.bottomAnchor,
                           padding: UIEdgeInsets(top: 0, left: 50, bottom: 15, right: 0))
        
        thisWeekButton = UIButton()
        guard let thisWeekButton        = thisWeekButton else { return }
        thisWeekButton.backgroundColor  = .clear
        thisWeekButton.titleLabel?.font = UIFont(name: "Avenir", size: 16)
        
        thisWeekButton.setTitleColor(.white, for: .normal)
        thisWeekButton.setTitle("Essa Semana", for: .normal)

        self.addSubview(thisWeekButton)
        thisWeekButton.anchor(leading: todayButton.trailingAnchor,
                              bottom:  viewHeader?.bottomAnchor,
                              padding: UIEdgeInsets(top: 0, left: 50, bottom: 15, right: 0))
        
        thisMounthButton = UIButton()
        guard let thisMounthButton        = thisMounthButton else { return }
        thisMounthButton.backgroundColor  = .clear
        thisMounthButton.titleLabel?.font = UIFont(name: "Avenir", size: 16)
        
        thisMounthButton.setTitleColor(.white, for: .normal)
        thisMounthButton.setTitle("Esse Mês", for: .normal)
        
        self.addSubview(thisMounthButton)
        thisMounthButton.anchor(bottom:   viewHeader?.bottomAnchor,
                                trailing: self.trailingAnchor,
                                padding:  UIEdgeInsets(top: 0, left: 0, bottom: 15, right: 50))
    }
    
    fileprivate func configureButtonsOptions() {
        flightButton                    = UIButton()
        guard let flightButton          = flightButton else { return }
        flightButton.backgroundColor    = UIColor(red: 68/255, green: 65/255, blue: 64/255, alpha: 1)
        flightButton.layer.cornerRadius = 5
        
        flightButton.setImage(UIImage(named: "flight2") as UIImage?, for: .normal)
        
        self.addSubview(flightButton)
        flightButton.anchor(top:     viewHeader?.bottomAnchor,
                            leading: self.leadingAnchor,
                            padding: UIEdgeInsets(top: 20, left: 12, bottom: 0, right: 0),
                            size:     CGSize(width: 60, height: 50))
        
        homeButton = UIButton()
        guard let homeButton          = homeButton else { return }
        homeButton.backgroundColor    = UIColor(red: 68/255, green: 65/255, blue: 64/255, alpha: 1)
        homeButton.layer.cornerRadius = 5
    
        homeButton.setImage(UIImage(named: "home2") as UIImage?, for: .normal)
        
        self.addSubview(homeButton)
        homeButton.anchor(top:     viewHeader?.bottomAnchor,
                          leading: flightButton.trailingAnchor,
                          padding: UIEdgeInsets(top: 20, left: 12, bottom: 0, right: 0),
                          size:    CGSize(width: 60, height: 50))
        
        dinnerButton = UIButton()
        guard let dinnerButton          = dinnerButton else { return }
        dinnerButton.backgroundColor    = UIColor(red: 68/255, green: 65/255, blue: 64/255, alpha: 1)
        dinnerButton.layer.cornerRadius = 5

        dinnerButton.setImage(UIImage(named: "dinner2") as UIImage?, for: .normal)

        self.addSubview(dinnerButton)
        dinnerButton.anchor(top:     viewHeader?.bottomAnchor,
                            leading: homeButton.trailingAnchor,
                            padding: UIEdgeInsets(top: 20, left: 12, bottom: 0, right: 0),
                            size:    CGSize(width: 60, height: 50))

        carButton = UIButton()
        guard let carButton          = carButton else { return }
        carButton.backgroundColor    = UIColor(red: 68/255, green: 65/255, blue: 64/255, alpha: 1)
        carButton.layer.cornerRadius = 5

        carButton.setImage(UIImage(named: "car2") as UIImage?, for: .normal)

        self.addSubview(carButton)
        carButton.anchor(top:     viewHeader?.bottomAnchor,
                         leading: dinnerButton.trailingAnchor,
                         padding: UIEdgeInsets(top: 20, left: 12, bottom: 0, right: 0),
                         size:    CGSize(width: 60, height: 50))

        buildButton = UIButton()
        guard let buildButton          = buildButton else { return }
        buildButton.backgroundColor    = UIColor(red: 68/255, green: 65/255, blue: 64/255, alpha: 1)
        buildButton.layer.cornerRadius = 5
    
        buildButton.setImage(UIImage(named: "build2") as UIImage?, for: .normal)
        
        self.addSubview(buildButton)
        buildButton.anchor(top:      viewHeader?.bottomAnchor,
                           trailing: self.trailingAnchor,
                           padding:  UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 12),
                           size:     CGSize(width: 60, height: 50))
    }
    
    fileprivate func configureDescriptionView() {
        oneViewDescriptionProducts                     = UIView()
        guard let oneViewDescriptionProducts           = oneViewDescriptionProducts else { return }
        oneViewDescriptionProducts.backgroundColor     = .white
        oneViewDescriptionProducts.layer.cornerRadius  = 8
        
        self.addSubview(oneViewDescriptionProducts)
        oneViewDescriptionProducts.anchor(top:   homeButton?.bottomAnchor,
                                       leading:  self.leadingAnchor,
                                       trailing: self.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 12, bottom: 0, right: 12),
                                       size:     CGSize(width: 0, height: 60))
        
        secondViewDescriptionProducts = UIView()
        guard let secondViewDescriptionProducts           = secondViewDescriptionProducts else { return }
        secondViewDescriptionProducts.backgroundColor     = .white
        secondViewDescriptionProducts.layer.cornerRadius  = 8
        
        self.addSubview(secondViewDescriptionProducts)
        secondViewDescriptionProducts.anchor(top:      oneViewDescriptionProducts.bottomAnchor,
                                             leading:  self.leadingAnchor,
                                             trailing: self.trailingAnchor,
                                             padding:  UIEdgeInsets(top: 20, left: 12, bottom: 0, right: 12),
                                             size:     CGSize(width: 0, height: 60))
    }
    
    fileprivate func configureLabelsDescriptionView() {
        pricePizzaLabel                 = UILabel()
        guard let pricePizzaLabel       = pricePizzaLabel else { return }
        pricePizzaLabel.backgroundColor = .clear
        pricePizzaLabel.textColor       = .black
        pricePizzaLabel.text            = "Pizza(R$ 30)"
        pricePizzaLabel.textAlignment   = .center
        pricePizzaLabel.font            = UIFont(name: "Avenir", size: 16)
        
        self.addSubview(pricePizzaLabel)
        pricePizzaLabel.anchor(top:     oneViewDescriptionProducts?.topAnchor,
                               leading:  self.leadingAnchor,
                               padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 0))
        
        datePizzaLabel = UILabel()
        guard let datePizzaLabel       = datePizzaLabel else { return }
        datePizzaLabel.backgroundColor = .clear
        datePizzaLabel.textColor       = .black
        datePizzaLabel.text            = "20/01/2020"
        datePizzaLabel.textAlignment   = .center
        datePizzaLabel.font            = UIFont(name: "Avenir", size: 16)
        
        self.addSubview(datePizzaLabel)
        datePizzaLabel.anchor(top:     oneViewDescriptionProducts?.topAnchor,
                              trailing: self.trailingAnchor,
                              padding:  UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 35))
        
        priceCocaLabel = UILabel()
        guard let priceCocaLabel       = priceCocaLabel else { return }
        priceCocaLabel.backgroundColor = .clear
        priceCocaLabel.textColor       = .black
        priceCocaLabel.text            = "Coca-Cola(R$ 10)"
        priceCocaLabel.textAlignment   = .center
        priceCocaLabel.font            = UIFont(name: "Avenir", size: 16)
        
        self.addSubview(priceCocaLabel)
        priceCocaLabel.anchor(top:      secondViewDescriptionProducts?.topAnchor,
                              leading:  self.leadingAnchor,
                              padding:  UIEdgeInsets(top: 20, left: 35, bottom: 0, right: 0))
        
        dateCocaLabel = UILabel()
        guard let dateCocaLabel       = dateCocaLabel else { return }
        dateCocaLabel.backgroundColor = .clear
        dateCocaLabel.textColor       = .black
        dateCocaLabel.text            = "20/01/2020"
        dateCocaLabel.textAlignment   = .center
        dateCocaLabel.font            = UIFont(name: "Avenir", size: 16)
        
        self.addSubview(dateCocaLabel)
        dateCocaLabel.anchor(top:     secondViewDescriptionProducts?.topAnchor,
                             trailing: self.trailingAnchor,
                             padding:  UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 35))
        
    }
}
