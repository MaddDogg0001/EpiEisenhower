//
//  TaskInteractor.swift
//  Epitech-Eisenhower
//
//  Created by Odet Alexandre on 15/03/2018.
//  Copyright © 2018 Odet Alexandre. All rights reserved.
//

import Foundation
import RxSwift

final class TaskInteractor {
    var output: TaskPresenter?
    
    private var restApiTask = RestAPITask()
    private lazy var disposeBag = DisposeBag()
    
    deinit {
        restApiTask.cancelRequest()
    }
    
    func fetchData(ofTask taskId: Int) {
        restApiTask.getData(forTask: taskId).subscribe(onNext: {
            task in
            self.output?.didFetch(result: task)
        }, onError: {
            error in
            self.output?.didFail(with: error)
        })
    }
    
    func willUpdate(task: TaskContent) {
        
    }
    
    func willCreate(task: TaskContent) {
        restApiTask.createTask(withContent: task).subscribe(onNext: { task in
            self.output?.didFetch(result: task)
        }, onError: { error in
            self.output?.didFail(with: error)
        }).disposed(by: disposeBag)
    }
}
