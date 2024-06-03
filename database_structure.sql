+-------------------+
|      User         |
+-------------------+
| id (PK)           |
| username          |
| email             |
| password          |
| created_at        |
| updated_at        |
+-------------------+
          |
          |
          v
+-------------------+
|      Code         |
+-------------------+
| id (PK)           |
| title             |
| description       |
| content           |
| created_at        |
| updated_at        |
| user_id (FK)      |--> User.id
+-------------------+
          |
          |
          v
+-------------------+
|    Comment        |
+-------------------+
| id (PK)           |
| content           |
| created_at        |
| updated_at        |
| user_id (FK)      |--> User.id
| code_id (FK)      |--> Code.id
+-------------------+
          |
          |
          v
+-------------------+
|     Like          |
+-------------------+
| id (PK)           |
| created_at        |
| user_id (FK)      |--> User.id
| code_id (FK)      |--> Code.id (nullable)
| comment_id (FK)   |--> Comment.id (nullable)
+-------------------+
          |
          |
          v
+-------------------+
|    Dataset        |
+-------------------+
| id (PK)           |
| title             |
| description       |
| file_path         |
| created_at        |
| updated_at        |
| user_id (FK)      |--> User.id
+-------------------+
          |
          |
          v
+-------------------+
|    Message        |
+-------------------+
| id (PK)           |
| content           |
| created_at        |
| updated_at        |
| sender_id (FK)    |--> User.id
| receiver_id (FK)  |--> User.id
+-------------------+
