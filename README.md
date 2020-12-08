Crontab entry:
```
* 0,8-23 * * * cd /home/odroid/projects/timelapser && ./capture_image.sh >> logs/`date +\%Y\%m\%d`-capture-cron.log 2>&1

*/5 * * * * cd /home/odroid/projects/timelapser && /home/odroid/projects/timelapser/restart_image_webserver.sh >> logs/`date +\%Y\%m\%d`-server-cron.log 2>&1

0 1 * * * cd /home/odroid/projects/timelapser && /home/odroid/projects/timelapser/save_day_video.sh >> logs/`date +\%Y\%m\%d`-saver-cron.log 2>&1
```

