#!/bin/zsh

sed -i '/cron:/d' .github/workflows/baohuo.yml
nm=`date -d next-month +%m`
time="0 0 1 "`expr $nm + 0`" *"
echo $time
sed -i '/schedule/a\    - cron: '$time'' .github/workflows/baohuo.yml

exit 0
