# 🎬 Cinema App 🎬
<h1 align="center">
<img src="images/header.jpg" alt="Header" width="266"> <br>
</h1>
<details align="center">
  <summary> <h4> Table Content </h4>  </summary>
    <p align="center" style="color: #fa464f">
        • <a href="#-Description-" style="color: #a8b6c5">Description</a>
        • <a href="#-Features-of-the-program-" style="color: #a8b6c5">Features of the program</a> <br>
        • <a href="#-Project-structure-" style="color: #a8b6c5">Project Structure</a>
        • <a href="#-Technologies-" style="color: #a8b6c5">Technologies</a>
        • <a href="#-How-to-run-application-" style="color: #a8b6c5">How to run the application</a>
    </p>
</details>

## 📕 Description 📕
The server application, written in Java and Spring, 
is prepared for use in the backend of a cinema web application. 
It implements the most necessary functions for such an application:

- registration of new users and saving them in the database
- management of movies, cinemas and movie shows
- user basket of tickets, the user has the opportunity to purchase a ticket 
for a specific movie show in a specific auditorium

All information is received and sent in JSON format,
which allows you to use any appearance for this API that can be implemented by 
the front-end development team

## ⚡ Features of the program ⚡

| Roles      |                    Feature                    | Endpoints                             |
|------------|:---------------------------------------------:|---------------------------------------|
| Admin/User |               Get cinema halls                | GET: `/cinema-halls`                  |
| Admin/User |                  Get movies                   | GET: `/movies`                        |
| Admin/User | Get available movie sessions at date you need | GET: `/movie-sessions/available`      |
| Admin      |               Add cinema halls                | POST: `/cinema-halls`                 |
| Admin      |                  Add movies                   | POST: `/movies`                       |
| Admin      |              Add movie sessions               | POST: `/movie-sessions`               |
| Admin      |             Update movie sessions             | PUT: `/movie-sessions/{id}`           |
| Admin      |             Delete movie sessions             | DELETE: `/movie-sessions/{id}`        |
| Admin      |              Get users by email               | GET: `/users/by-email`                |
| User       |                  Get orders                   | GET: `/orders`                        |
| User       |                Complete orders                | POST: `/orders/complete`              |
| User       |         Add tickets to shopping cart          | PUT: `/shopping-carts/movie-sessions` |
| User       |           Get shopping cart by user           | GET: `/shopping-carts/by-user`        |

Looking at the table you can understand what resource the `USER` or `ADMIN` has access to.

## 🧱 Project structure 🧱
### N-tier architecture
Project structure consists of 3 layers + db:

1. Presentation layer;
2. Business logic layer; 
3. Data logic layer.

### DB structure
<img src="images/cinema_structure.png" alt="Header" width="1420"> <br>

## 🤖 Technologies 🤖

| Technology             | Version |
|:-----------------------|:--------|
| JDK                    | 17      |
| Maven                  | 4.0.0   |
| TomCat                 | 9.0.50  |
| MySQL                  | 8.0.22  |
| Spring (WEB, Security) | 5.2.2   |
| Hibernate              | 5.4.27  |

## 🏃‍ How to run application 🏃
1. Clone the project to your IDE from GitHub.
2. Configure connection to DB in resources in file db.properties ([this fields](https://github.com/denys-domashevskyi/taxi-service/blob/main/src/main/src/main/resources/db.properties#L2)) with your own URL, username, password and JDBC driver.
3. Configure Tomcat (recommended [9.0.50 version](https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.50/bin/)).
4. Run program using `Shift + F10`.
5. The window must automatically open in your browser, if not type this URL `http://localhost:8080/login`.
6. You can log in as user using login: `user@i.ua` and password: `user123` or admin using login: `admin@i.ua` and password: `admin123`.
7. Enjoy.
