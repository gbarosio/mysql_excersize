
# assuming an already existing master slave environment running with binglog format ROW
# database things does not exists
# fetch sql
wget https://storage.googleapis.com/datastores-challenge/challenge.sql
# fetch binlog files
wget https://storage.googleapis.com/datastores-challenge/binlog.tar.gz

tar xvfz binlog.tar.gz
rm binlog.tar.gz

mysqlbinlog lol.000001 lol.000002 lol.000003 | mysql -u root 
cat challenge.sql | mysql -u root -p things 

mysqldump -u root -p things > things.dump 
