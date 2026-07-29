//
//  TaskFlowApp.swift
//  TaskFlow
//
//  Created by Mohamed Ibrahim on 29/07/2026.
//

import SwiftUI

@main
struct TaskFlowApp: App {

    private let di = DI.shared

    var body: some Scene {

        WindowGroup {

            HomeView(
                viewModel: HomeViewModel(
                    getTasksUseCase: di.getTasksUseCase,
                    addTaskUseCase: di.addTaskUseCase,
                    deleteTaskUseCase: di.deleteTaskUseCase,
                    toggleTaskUseCase: di.toggleTaskUseCase
                )
            )

        }

    }
}
