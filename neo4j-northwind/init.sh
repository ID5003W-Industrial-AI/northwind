echo 'dbms.security.allow_csv_import_from_file_urls=true' >> /var/lib/neo4j/conf/neo4j.conf

cp /neo4j-northwind/* /var/lib/neo4j/import/

cypher-shell --file /var/lib/neo4j/import/import_csv.cypher --fail-at-end
