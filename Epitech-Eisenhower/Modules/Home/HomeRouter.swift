//
//  HomeRouter.swift
//  Epitech-Eisenhower
//
//  Created by Odet Alexandre on 13/03/2018.
//  Copyright © 2018 Odet Alexandre. All rights reserved.
//

import Foundation
import UIKit

class HomeRouter {
    
    var view: HomeViewController?
    
    static func buildModule() -> UIViewController {
        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: Constants.identifiers.homeViewControllerIdentifier) as! HomeViewController
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        
        let router = HomeRouter()
        
        viewController.presenter = presenter
        
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        router.view = viewController
        return navigationController
    }
    
    func presentLoginModule() {
        let loginViewController = LoginRouter.buildModule()
        view?.present(loginViewController, animated: true, completion: nil)
    }
    
    func goToUserProfile(userID: Int) {
        //To-Do: Instantiate the UserProfileModule, and then push it into the UINavigationController + set the UserId
    }
    
    func goToTaskDetail(isEditing: Bool, taskId: Int = -1) {
        if taskId != -1 && isEditing == true {
            fatalError("That shouldn't happen.")
        } else {
            //To-Do instantiate the TaskDetailModule, and then push it into the UINavigationController + set the taskId if taskId != -1
            print("Router should go to TaskDetail with parameters: isEditing \(isEditing)||taskID: \(taskId)")
        }
    }
}
