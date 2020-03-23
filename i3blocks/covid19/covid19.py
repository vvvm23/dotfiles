#!/usr/bin/python3
import datetime
import urllib.request
import json
import sys
import os

def main(country, label):
    if not datetime.datetime.fromtimestamp(os.stat("/home/alex/.cache/corona").st_mtime).date() == datetime.datetime.now().date() or \
    not datetime.datetime.fromtimestamp(os.stat("/home/alex/.cache/corona").st_mtime).hour == datetime.datetime.now().hour:
        URL = f"https://corona-stats.online/{country}?format=json"
        try:
            country_dict = list(filter(lambda x: x['province'] == 'United Kingdom', json.loads(urllib.request.urlopen('https://corona-stats.online/UK?format=json').read())))[0]
            f = open('/home/alex/.cache/corona', mode='w')
            f.write(json.dumps(country_dict))
            f.close()
        except Exception as e:
            raise e
    f = open('/home/alex/.cache/corona', mode='r')
    country_dict = json.loads(f.read())
    f.close()

    d_active = (country_dict['confirmedByDay'][-1] - country_dict['recoveredByDay'][-1]) - (country_dict['confirmedByDay'][-2] - country_dict['recoveredByDay'][-2])
    if d_active > 0:
        d_active = f"+{d_active}"
    d_active = str(d_active)

    d_deaths = country_dict['deathsByDay'][-1] - country_dict['deathsByDay'][-2]
    if d_deaths > 0:
        d_deaths = f"+{d_deaths}"
    d_deaths = str(d_deaths)

    infected_emoji = "\ue286"
    dead_emoji = "\ufb8a"
    output = f"{label} {infected_emoji}{country_dict['active']}({d_active}) {dead_emoji}\u200e{country_dict['deaths']}({d_deaths})" 
    # output = "TEST: \ue286 ABC \ufb8a +123"
    print(output)

if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
