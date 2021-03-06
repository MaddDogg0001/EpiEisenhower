//
//  LoginInteractor.swift
//  Epitech-Eisenhower
//
//  Created by Odet Alexandre on 06/03/2018.
//  Copyright © 2018 Odet Alexandre. All rights reserved.
//

import Foundation
import RxSwift

final class LoginInteractor {
    
    var ouput: LoginPresenter?
    
    private lazy var disposeBag = DisposeBag()
    
    deinit {
        raAuthentication.cancelRequest()
    }
    
    let raAuthentication = RestAPIAuthentication()
    
    func signIn(email: String, password: String) {
        raAuthentication.signIn(email: email, password: password).subscribe(
            onNext: { response in
            self.ouput?.didFetch(result: response)
        }, onError: { error in
            self.ouput?.didFail(with: error)
        }).disposed(by: disposeBag)
    }
    
    func signUp(email: String, password: String) {
        raAuthentication.signUp(email: email, password: password).subscribe(
            onNext: { user in
            self.ouput?.didFetch(result: user)
        }, onError: { error in
            self.ouput?.didFail(with: error)
        }).disposed(by: disposeBag)
    }
    
    func save(userId: Int, userToken token: String) {
        UserDefaults.standard.set(true, forKey: Constants.keys.isLoggedKey)
        UserDefaults.standard.set(userId, forKey: Constants.keys.userIdKey)
        UserDefaults.standard.set(token, forKey: Constants.keys.authenticationTokenKey)
        UserDefaults.standard.synchronize()
    }
}
