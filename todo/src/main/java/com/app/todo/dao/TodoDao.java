package com.app.todo.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.todo.vo.Todo;

@Repository
public class TodoDao {

	@Autowired
	SqlSession session;

	public int insertTodo(Todo todo) {
		int result = 0;

		TodoMapper mapper = session.getMapper(TodoMapper.class);
		try {
			result = mapper.insertTodo(todo);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;

	}

	public int updateTodo(Todo todo) {
		int result = 0;

		TodoMapper mapper = session.getMapper(TodoMapper.class);
		try {
			result = mapper.updateTodo(todo);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}

	public int deleteTodo(Todo todo) {
		int result = 0;

		TodoMapper mapper = session.getMapper(TodoMapper.class);
		try {
			result = mapper.deleteTodo(todo);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}

	public ArrayList<Todo> selectTodo() {
		ArrayList<Todo> result = null;

		TodoMapper mapper = session.getMapper(TodoMapper.class);
		try {
			result = mapper.selectTodo();
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
}
