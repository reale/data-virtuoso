SELECT Sum(heap_blks_read)                                               AS heap_read, 
       Sum(heap_blks_hit)                                                AS heap_hit, 
       ( Sum(heap_blks_hit) - Sum(heap_blks_read) ) / Sum(heap_blks_hit) AS ratio 
FROM   pg_statio_user_tables; 
