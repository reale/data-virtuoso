SELECT pg_type.typname                      AS type_name, 
       Round(Avg(Length(pg_class.relname))) AS avg_name_length 
FROM   pg_class 
       JOIN pg_type 
         ON reltype = pg_type.oid 
GROUP  BY pg_type.typname 
ORDER  BY Round(Avg(Length(pg_class.relname))) DESC; 
