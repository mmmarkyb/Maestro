# Maestro
an interactive web app called maestro

# How To Deploy
with a local server setup please create a database in phpMyAdmin titled 'maestro'.
Once this is completed run the following SQL scripts in this order:
  1. CREATE.sql
  2. INSERT-INTO.sql **
  
Once this is complete the contents of the root folder should be copied into htdocs, Maestro should now work on you system.
If you have connection issues please check the file "php/conn.php" and check the credentials match at least on of your database users.

You can now enjoy Maestro! 

Thanks!!

** You may need to remove comments from insert-into script
