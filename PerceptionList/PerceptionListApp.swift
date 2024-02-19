//
//  PerceptionListApp.swift
//  PerceptionList
//
//  Created by Stefan O'Shea on 19/2/2024.
//

import ComposableArchitecture
import SwiftUI

@main
struct PerceptionListApp: App {
    var body: some Scene {
        WindowGroup {
            let parentStore = StoreOf<Parent>(
                initialState: Parent.State(
                    children: [
                        Child.State(title: "Title 1"),
                        Child.State(title: "Title 2")
                    ]
                ),
                reducer: { Parent() }
            )
            ParentView(store: parentStore)
        }
    }
}
