#!/bin/zsh

sed -i '/cron:/d' .github/workflows/baohuo.yml
time=$(($RANDOM%60))" 0 * * "`date -d next-day +%w`
echo $time
sed -i '/schedule/a\    - cron: '$time'' .github/workflows/baohuo.yml

exit 0
