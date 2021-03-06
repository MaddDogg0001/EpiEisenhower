//
//  Constants.swift
//  Epitech-Eisenhower
//
//  Created by Odet Alexandre on 27/02/2018.
//  Copyright © 2018 Odet Alexandre. All rights reserved.
//

import Foundation

final class Constants {
    final class formatting {
        public class var swiftEmailRegex: String { return "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}" }
        public class var dateFormat: String { return "dd MMMM YYYY" }
    }
    
    final class identifiers {
        final class viewControllers {
            public class var loginViewControllerIdentifier: String { return "LoginViewController" }
            public class var homeViewControllerIdentifier: String { return "HomeViewController" }
            public class var taskDetailViewControllerIdentifier: String { return "TaskDetailViewController" }
            public class var userProfileViewControllerIdentifier: String { return "UserProfileViewController" }
            public class var userListViewControllerIdentifier: String { return "UserListViewController" }
        }
        
        final class customCells {
            public class var taskCollectionViewCellIdentifier: String { return "HomeCollectionViewCellIdentifier" }
            public class var addCollectionViewCellIdentifier: String { return "HomeAddCollectionViewCellIdentifier" }
            public class var taskMemberTableViewCellIdentifier: String { return "TaskDetailMemeberTableViewCellIdentifier" }
        }
    }
    
    final class keys {
        public class var isLoggedKey: String { return "isLogged" }
        public class var authenticationTokenKey: String { return "token" }
        public class var userIdKey: String { return "userId" }
    }
    
    final class titles {
        public class var loginTitle: String { return "Login" }
        public class var homeTitle: String { return "Home" }
        public class var taskEditionTitle: String { return "Task Detail (Edit)" }
        public class var taskCreationTitle: String { return "Task Detail (Create)" }
        public class var userProfileTitle: String { return "Your Profile" }
    }
    
    final class placeholders {
        public class var taskTitlePlaceholder: String { return "Please enter a title for you task..." }
        public class var taskDescriptionPlaceholder: String { return "Please enter a description for your task..." }
        public class var taskDueDateLabelPlaceholder: String { return "Please select a due date for your task..." }
    }
}
