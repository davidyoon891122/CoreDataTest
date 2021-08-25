//
//  ToDoViewModel.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/24.
//

import Foundation


class TodoViewModel {
    
    var todoList: [Todo] = [Todo]()
    

    func addTodoList(todo: Todo) {
        self.todoList.append(todo)
    }
    
    
    func getTodoList() -> [Todo] {
        return self.todoList
    }
    
}
