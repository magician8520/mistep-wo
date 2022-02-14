#!/bin/zsh

sed -i '/cron:/d' .github/workflows/baohuo.yml
nexttime="date --date='50 day'"
nm=`expr $nexttime "+%m" + 0`
nd=`expr $nexttime "+%d" + 0`
nH=`expr $nexttime "+%H" + 0`
nM=`expr $nexttime "+%M" + 0`

# nm=`date -d next-month +%m`
# time=$(($RANDOM%60))" "$(($RANDOM%23))" 1 "`expr $nm + 0`" *"
time=$nM" "$nH" "$nd" "$nm" *"
echo $time
sed -i '/schedule/a\    - cron: '$time'' .github/workflows/baohuo.yml

exit 0
