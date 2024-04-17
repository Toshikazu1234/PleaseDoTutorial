//
//  LoginManager.swift
//  PleaseDoTutorial
//
//  Created by R K on 4/16/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

final class LoginManager {
    // Fetch login related data to pass to LoginVM
    
    private let db = Firestore.firestore()
    var currentUser: User?
    
    func signUp(_ fname: String, _ lname: String, _ email: String, _ pw: String) {
        Task {
            do {
                let result = try await Auth.auth().createUser(withEmail: email, password: pw)
                currentUser = result.user
                let id = result.user.uid
                try await db.collection("Users").document(id).setData([
                    "fname": fname,
                    "lname": lname,
                    "email": email,
                    "id": id
                ])
                print("Document successfully written!")
            } catch {
                print(error)
            }
        }
    }
}
