# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- Used Sinatra to build this application, with a variety of gems in addition.
- [x] Use ActiveRecord for storing information in a database
- Used ActiveRecord to create database tables for the application.
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
- Three model classes are included - User, ClothingItem and ClothingItemCategory.  
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
- Users have many ClothingItems,
- ClothingItemCategories have many ClothingItems
- [x] Include user accounts
- User account exist in the domain.
- [x] Ensure that users can't modify content created by other users
- The domain intentionally includes models that can be viewed across-users models (clothing items and clothing categories can be "owned" by multiple users) these cannot be modified by any user. However users cannot modify user accounts created by another user.
- [x] Include user input validations
- User account and clothing item information can be validated. Also validating information about clothing items.
- [ ] Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
