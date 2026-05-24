--multiple sql transactions run as one safe init

--placing an order
--reduce stock of that product
--creating payment records
--transfering money
--creating user records with related profile data


BEGIN;

UPDATE posts 
SET status = 'published'
WHERE title = 'Indexes for Beginners'
 AND status ='draft';

 UPDATE posts 
 SET views = views + 50
 WHERE title = 'Indexes for Beginners';

 SELECT 
  title,
  status,
  views
FROM posts
WHERE title = 'Indexes for Beginners';

COMMIT; --Permanently saves the changes we have made
--ROLLBACK --CANCELS THE TRANSACTION