//
//  ToDoViewModel.swift
//  CoreDataTest
//
//  Created by David Yoon on 2021/08/24.
//

import Foundation


class TodoViewModel {
    
    private var todoList: [Todo] {
        didSet{
            for todo in todoList {
                print(todo.title)
            }
            
        }
    }
    
    public init()
    {
        self.todoList = [Todo]()
    }
    
    
    func addTodoList(todo: Todo) {
        self.todoList.append(todo)
    }
    
    
    func getTodoList() -> [Todo] {
        return self.todoList
    }
    
}
