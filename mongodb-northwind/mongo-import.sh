cd /mongodb-northwind

for f in *.csv
do
    filename=$(basename "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo $filename
    mongoimport --host "127.0.0.1:27017" -u "root" -p "somestrongpassword" --authenticationDatabase "admin" -d Northwind -c "$filename" --type csv --file "$f" --headerline
done
