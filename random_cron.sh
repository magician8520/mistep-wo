#!/bin/zsh

sed -i '/cron:/d' .github/workflows/baohuo.yml
nm=`date --date='50 day' "+%m"`
nd=`date --date='50 day' "+%d"`
nH=`date --date='50 day' "+%H"`
nM=`date --date='50 day' "+%M"`

nm=`expr $nm + 0`
nd=`expr $nd + 0`
nH=`expr $nH + 0`
nM=`expr $nM + 0`

time=$nM" "$nH" "$nd" "$nm" *"
echo $time
sed -i '/schedule/a\    - cron: '$time'' .github/workflows/baohuo.yml

exit 0
