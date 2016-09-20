-- Here we see an example of using SQL to delete
-- duplicate table rows using a SQL subquery
-- to identify duplicate rows,
-- manually specifying the join columns.
-- Please note that you must specify all of the columns
-- that make the row a duplicate in the SQL WHERE clause.

DELETE FROM table_name a
 WHERE a.rowid > ANY (SELECT b.rowid
                        FROM table_name b
                       WHERE a.col1 = b.col1
                         AND a.col2 = b.col2);

