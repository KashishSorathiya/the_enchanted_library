Project Title: The Enchanted Library  
Author: Kashish Sorathiya 

Introduction
-This document presents an analytical breakdown of the core concepts implemented in The Enchanted Library, an intelligent and secure library management system. The purpose of this assignment is to identify and document the essential -Objects within the system, the -Context in which they operate, and the -Information they encapsulate.  
-The project integrates -Objectoriented principles, design patterns, and databasedriven operations to provide rolebased access, book management, fine calculation, notification mechanisms, and smart recommendations. This conceptual analysis ensures a clear understanding of the system's fundamental components and their roles within the broader application -Context.

Conceptual Framework
-Each concept is detailed under three headings:  

 1) -Object: The entity or component as implemented in the system.  
 2) -Context: The operational purpose and role of the entity within the application.  
 3) -Information: The data attributes or metadata associated with the entity.  

1. User
 -Object:  
  The "User" entity represents all individuals interacting with the system, classified into distinct roles such as Admin, Scholar, Librarian, and Guest.  

 -Context:  
  Rolebased access control is fundamental to ensuring system security and appropriate functionality allocation. Users perform actions like borrowing, returning, managing, or browsing books depending on their assigned roles.  

 -Information:  
   Attributes:  user_id ,  name ,  role ,  email ,  password   
   
 -Roles and Permissions:  
     Admin: Systemwide control and monitoring  
     Librarian: Book and reservation management  
     Scholar: Borrowing and returning privileges  
     Guest: Limited browsing access  

2. Book
 -Object:  
  Represents a library resource that can be borrowed, reserved, or returned.  

 -Context:  
  Books are at the core of library operations. Their availability and status are dynamically updated based on user interactions.  

 -Information:  
   Attributes:  book_id ,  title ,  author ,  genre ,  availability_status   
   Possible States: Available, Borrowed, Reserved  

3. Borrow Record
 -Object:  
  Tracks the borrowing of books by users.  

 -Context:  
  Provides accountability and facilitates fine calculation by maintaining borrowing dates, due dates, and return history.  

 -Information:  
   Attributes:  record_id ,  user_id ,  book_id ,  borrow_date ,  due_date ,  return_date   

4. Reservation
 -Object:  
  Represents a user’s request to hold a book that is currently unavailable.  

 -Context:  
  Enables a reservation mechanism that ensures users can queue for indemand books and receive notifications when they become available.  

 -Information:  
   Attributes:  reservation_id ,  user_id ,  book_id ,  reservation_date   

5. Notification
 -Object:  
  Alerts generated to inform users of system events such as due dates, book availability, and reservation updates.  

 -Context:  
  Implemented using the Observer Pattern, notifications provide realtime communication between the system and its users.  

 -Information:  
   Attributes:  notification_id ,  user_id ,  message ,  timestamp   

6. Fine
 -Object:  
  Represents a monetary penalty for delayed book returns.  

 -Context:  
  Implements the Strategy Pattern to calculate fines differently based on user roles, ensuring fair and rolespecific penalties.  

 -Information:  
   Attributes:  fine_amount ,  days_overdue ,  role_strategy   

7. Database Connection (Singleton)
 -Object:  
  A centralized database connection manager.  

 -Context:  
  Ensures that a single, secure connection instance is maintained throughout the system using the Singleton Pattern.  

 -Information:  
   Tables:  users ,  books ,  borrow_records ,  reservations ,  notifications ,  returns   

8. Graphical User Interface (Facade)
 -Object:  
  The CustomTkinterbased interface facilitating user interaction with the system.  

 -Context:  
  Utilizes the Facade Pattern to abstract complex backend operations into a simplified and intuitive graphical interface.  

 -Information:  
   Components: Login Page, Dashboard, Book Management Module, Notification Center  

9. Smart Recommendation Engine
 -Object:  
  An algorithmic component that suggests books based on user preferences and borrowing history.  

 -Context:  
  Enhances the user experience by providing personalized recommendations, especially for frequent borrowers (e.g., Scholars).  

 -Information:  
   Inputs: Borrowing history, preferred genres  
   Outputs: Recommended books list  

10. Logging System
 -Object:  
  Records significant user and system actions for auditing purposes.  

 -Context:  
  Ensures transparency, security, and traceability of critical operations such as borrowing, returning, and reservation management.  

 -Information:  
   Attributes:  log_id ,  action_type ,  user_id ,  timestamp   
