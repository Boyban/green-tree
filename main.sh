git init

touch junk

DATE="2022-12-12"
end_date_secs=$(date -d "2024-03-26" +%s)

while [ $(date -d "$DATE" +%s) -le $end_date_secs]
do
	echo 'a' >> junk

        commit_date="$DATE 12:00:00"

	git add .

	msg='commit'${DATE}

	git commit -m $msg --date="$DATE"

   	DATE=$(date -v+1d -f "+%Y-%m-%d" $DATE +%Y-%m-%d)
	
done
