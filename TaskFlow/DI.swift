//
//  DI.swift
//  TaskFlow
//
//  Created by Mohamed Ibrahim on 29/07/2026.
//


import Foundation

final class DI {

    static let shared = DI()

    private init() {}

    // MARK: - Local

    lazy var taskStorage = TaskStorage()

    // MARK: - Repository

    lazy var taskRepository: ITaskRepository = {
        TaskRepository(storage: taskStorage)
    }()

    // MARK: - UseCases

    lazy var getTasksUseCase = GetTasksUseCase(
        repository: taskRepository
    )

    lazy var addTaskUseCase = AddTaskUseCase(
        repository: taskRepository
    )

    lazy var deleteTaskUseCase = DeleteTaskUseCase(
        repository: taskRepository
    )

    lazy var toggleTaskUseCase = ToggleTaskUseCase(
        repository: taskRepository
    )
}
