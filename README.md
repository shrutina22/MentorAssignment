# MentorAssignment-Datatable
This is a datatable showing Name,Place,Animal,Thing retrieved from the database created in mysql.
The server is built using ExpressJS,a framework of NodeJS.

## Prerequisites

Install NodeJS,Node Package Manager(npm) and MYSQL

## Database

- The local machine should have MYSQL installed.
- Import the Datatable_Database.sql file using the command `mysql -u <username> -p <database name> <dump file path>`
- `-u `- for username
- `-p` - to prompt the password
- `database name` will be `datadb`
- `dump file path` will be the path of the `Datatable_Database.sql` file

## Local setup

- Install the dependencies with `npm install`
-  A folder named "node_modules" will be created.
- Start the server with `npm start`
- When a message "server running on port 8100" is displayed,open the browser and type "localhost:8100".
- To stop the server,press `Ctrl+C` and enter Y.
