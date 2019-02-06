SELECT 
    cloumns, aggregate(column)

FROM
    table_or_subquery

INNER/OUTER JOIN 
    other_table ON condition

WHERE 
    condition

GROUP BY 
    Columns

HAVING 
    condition_after_aggregation

ORDER BY 
    column ASC/DESC

LIMIT number;