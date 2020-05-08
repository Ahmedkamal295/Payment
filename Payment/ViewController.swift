//
//  ViewController.swift
//  Payment
//
//  Created by Ahmed on 5/7/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//
import UIKit
import Stripe

class ViewController: UIViewController, STPAddCardViewControllerDelegate {
    
    func addCardViewControllerDidCancel(_ addCardViewController: STPAddCardViewController) {
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func pay(_ sender: Any) {
        let config = STPPaymentConfiguration()
        config.requiredBillingAddressFields = .full
        let viewController = STPAddCardViewController(configuration: config, theme: .default())
        viewController.delegate = self
        let navigationController = UINavigationController(rootViewController: viewController)
        present(navigationController, animated: true, completion: nil)
    }
}

