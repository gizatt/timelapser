current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "\n****************\nChecking webserver status at time $current_time"
if ps -aux | grep -v grep | grep 'python3 -m http.server'
then
    echo "Server appears to be running."
else
    echo "Server is not running, restarting."
    python3 -m http.server &
fi
exit 0
