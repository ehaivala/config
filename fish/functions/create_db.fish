function create_db -d "Create MySQL database"
    if test (count $argv) -lt 3
        echo "Usage: create_db <db_name> <user> <password>"
        return 1
    end
    
    set -l db_name $argv[1]
    set -l user $argv[2]
    set -l password $argv[3]

    set -l q1 "CREATE DATABASE IF NOT EXISTS $db_name;"
    set -l q2 "GRANT ALL ON *.* TO '$user'@'localhost' IDENTIFIED BY '$password';"
    set -l q3 "FLUSH PRIVILEGES;"
    set -l sql "$q1 $q2 $q2"
    
    mysql -uroot -p -e "$sql"
    echo "Database $db_name created!"
end
