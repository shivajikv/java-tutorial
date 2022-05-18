# Java Containerized Application Sample

This application is an example application for the Rookout Java Agent tutorial.

Run it in a few simple steps:
1. Build the container using Docker - `docker build . -t rookout-java-todo`.
2. Run the built container using `docker run -it -p 8080:800 rookout-java-todo`
3. Check out your brand new web app at `http://localhost:8080`.
4. You may also test your container with TODO backend [project](https://todobackend.com/) by going to `https://www.todobackend.com/specs/index.html?http://localhost:8080/todos`.

It was forked off this open source [project](https://github.com/jcsantosbr/todo-backend-springboot2-java12) and containerized.
