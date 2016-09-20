-- Use self-join to detect duplicate rows.
-- The most effective way to detect duplicate rows
-- is to join the table against itself as shown below. 

SELECT book_unique_id, page_seq_nbr, image_key 
  FROM page_image a 
 WHERE rowid > SELECT MIN(rowid) 
                 FROM page_image b 
                WHERE b.key1 = a.key1 
                  AND b.key2 = a.key2 
                  AND b.key3 = a.key3); 
