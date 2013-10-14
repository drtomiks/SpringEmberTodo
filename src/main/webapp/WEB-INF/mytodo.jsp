<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">
<title>Ember.js TodoMVC</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

	<script type="text/x-handlebars" data-template-name="todos/index">
        <ul id="todo-list">
        {{#each itemController="todo"}}
  		<li {{bind-attr class="isCompleted:completed isEditing:editing"}}>
    	{{#if isEditing}}
      {{edit-todo class="edit" value=title focus-out="acceptChanges" 
                           insert-newline="acceptChanges"}}
    	{{else}}
      		{{input type="checkbox" checked=isCompleted class="toggle"}}
      		<label {{action "editTodo" on="doubleClick"}}>{{title}}</label>
			<button {{action "removeTodo"}} class="destroy"></button>
    	{{/if}}
  		</li>
		{{/each}}
        </ul>
	</script>

	<script type="text/x-handlebars" data-template-name="todos">
    <section id="todoapp">
      <header id="header">
        <h1>todos</h1>
        {{input type="text" id="new-todo" placeholder="What needs to be done?" 
              value=newTitle action="createTodo"}}
      </header>

	<section id="main">
  		{{outlet}}
  		{{input type="checkbox" id="toggle-all" checked=allAreDone}}
	</section>

	<footer id="footer">
		<span id="todo-count"> <strong>{{remaining}}</strong>
			{{inflection}} left
		</span>
		<ul id="filters">
			<li>{{#link-to "todos.index" activeClass="selected"}}All{{/link-to}}</li>
			<li>{{#link-to "todos.active" activeClass="selected"}}Active{{/link-to}}</li>
			<li>{{#link-to "todos.completed" activeClass="selected"}}Completed{{/link-to}}</li>
		</ul>

		{{#if hasCompleted}}
  		<button id="clear-completed" {{action "clearCompleted"}}>
    		Clear completed ({{completed}})
  		</button>
		{{/if}}
	</footer>
	</section>

	<footer id="info">
		<p>Double-click to edit a todo</p>
	</footer>
	</script>

	<script src="resources/js/libs/jquery-1.10.2.min.js"></script>
	<script src="resources/js/libs/handlebars-1.0.0.js"></script>
	<script src="resources/js/libs/ember.js"></script>
	<script src="resources/js/libs/ember-data.js"></script>
	<script src="resources/js/libs/localstorage_adapter.js"></script>
	<script src="resources/js/application.js"></script>
	<script src="resources/js/router.js"></script>
	<script src="resources/js/models/todo.js"></script>
	<script src="resources/js/controllers/todos_controller.js"></script>
	<script src="resources/js/controllers/todo_controller.js"></script>
	<script src="resources/js/views/edit_todo_view.js"></script>

</body>
</html>