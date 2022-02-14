#!/bin/zsh

sed -i '/cron:/d' .github/workflows/mistep-wo.yml
time=$(($RANDOM%60))" 0 * * "`date -d next-day +%w`
echo $time
sed -i '/schedule/a\    - cron: '$time'' .github/workflows/mistep-wo.yml

exit 0
