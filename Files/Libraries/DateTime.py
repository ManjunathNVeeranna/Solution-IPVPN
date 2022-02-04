from datetime import datetime
from pytz import timezone
from tzlocal import get_localzone

def converttimezones(arg):
	get_date = datetime.fromisoformat(arg)
	local_tz = get_localzone()
	local_tz = str(local_tz)
	new_timezone = timezone(local_tz)
	new_time = get_date.astimezone(new_timezone)
	print(new_time)
	return new_time
	