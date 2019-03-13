package com.app.todo.dao;

import java.util.ArrayList;

import com.app.todo.vo.Todo;

public interface TodoMapper {

	public int insertTodo(Todo todo);

	public int updateTodo(Todo todo);

	public int deleteTodo(Todo todo);

	public ArrayList<Todo> selectTodo();
}
