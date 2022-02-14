#!/bin/zsh

sed -i '/cron:/d' .github/workflows/baohuo.yml
echo 现在`date "+%Y-%m-%d %H:%M:%S"`\n
echo 50天后`date --date='50 day' "+%Y-%m-%d %H:%M:%S"`\n
nm=`date --date='50 day' "+%m"`
nd=`date --date='50 day' "+%d"`
nH=`date --date='50 day' "+%H"`
nM=`date --date='50 day' "+%M"`

nm=`expr $nm + 0`
nd=`expr $nd + 0`
nH=`expr $nh + 0`
nM=`expr $nM + 0`

# nm=`date -d next-month +%m`
# time=$(($RANDOM%60))" "$(($RANDOM%23))" 1 "`expr $nm + 0`" *"
time=$nM" "$nH" "$nd" "$nm" *"
echo $time
sed -i '/schedule/a\    - cron: '$time'' .github/workflows/baohuo.yml

exit 0
