//
//  TestViewController.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import UIKit

fileprivate  extension Selector {
    static let testButtonTapped2 =  #selector(TestViewController.testButtonAction2)
}
  
class TestViewController: UIViewController {

    
    private lazy var test: UIButton = {
            let temp = UIButton(type: .system)
            temp.translatesAutoresizingMaskIntoConstraints = false
            temp.addTarget(self, action: .testButtonTapped2, for: .touchUpInside)
            temp.setTitle("PUSH", for: .normal)
            temp.setTitleColor(.black, for: .normal)
            return temp
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
       view.addSubview(test)
        NSLayoutConstraint.activate(
        [
            test.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            test.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        // Do any additional setup after loading the view.
    }

    @objc fileprivate func testButtonAction2(_ sender: UIButton) {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .cyan
//        self.navigationController?.pushViewController(testViewController, animated: true)
        
//        let newNavController = UINavigationControllerviewController
        self.present(viewController, animated: true, completion:nil  )
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


