# Spring-Security-Custom-Login

A simple Java code to demonstrate the use of Spring Security (with JSP)
1. API Security 
  ROLE USER cannot access addEmployee API (read-only)
  ROLE ADMIN can access addEmployee API (read and write)  
2. Custom Login (create your own username and password, which will be authenticated against db tables)
3. Password Encode (using BCryptPasswordEncoder)
4. Enabling CSRF Protection
