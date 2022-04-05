host="fabmedical-581238.mongo.cosmos.azure.com"
username="fabmedical-581238"
password="3n5Tuxdl7xwdWlDZSRj2uczJtkyPFTzWeAz8SWqbsNXhBprHIW30wWqm6Q9iJP5iMiyWwtdk8XOkrPUuKlbi9g=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
