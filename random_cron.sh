#!/bin/zsh

sed -i '/cron:/d' .github/workflows/baohuo.yml
nm=`date -d next-month +%m`
time=$(($RANDOM%60))" "$(($RANDOM%23))" 1 "`expr $nm + 0`" *"
echo $time
sed -i '/schedule/a\    - cron: '$time'' .github/workflows/baohuo.yml

exit 0
