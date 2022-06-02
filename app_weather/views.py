from django.shortcuts import render
from datetime import datetime
import requests
from django.utils.translation import gettext_lazy as _
import json
from app_api_credentials.models import APICredentials


def weather(request):
    request_data = request.GET    
    search_param = {'city':     request_data['city']    if 'city'   in request_data and not request_data['city']    == '' else '',
                    'lang':     request_data['lang']    if 'lang'   in request_data and not request_data['lang']    == '' else '',
                    'units':    request_data['units']   if 'units'  in request_data and not request_data['units']   == '' else '',
                    }
    
    units = get_units(search_param["units"])
    
    api_credentials = APICredentials.objects.get(
        name="openweathermap_current").parameters
    URL = f"{api_credentials['URI']}{api_credentials['endpoint']}?q={search_param['city']}&lang={search_param['lang']}&units={search_param['units']}&appid={api_credentials['token']}"
    response_data = requests.get(URL)
    if response_data.status_code == 200:
        content = json.loads(response_data.text)
        response_param = {'city_state':     f"{content['name']},  {content['sys']['country']}",
                        'description':      f"{content['weather'][0]['description']}",
                        'temperature':      f"{content['main']['temp']} {units['temperature']}", 
                        'feels_like':       f"{content['main']['feels_like']} {units['temperature']}",
                        'wind':             f"{content['wind']['speed']} {units['wind']}",
                        'humidity':         f"{content['main']['humidity']} {units['humidity']}",
                        'precipitation':    get_precipitation_string(content, units),
                        'pressure':         f"{content['main']['pressure']} {units['pressure']}",
                        'icon':             f"{content['weather'][0]['icon']}", 
                        'date_time':        f"{datetime.fromtimestamp(content['dt'])}",     
                        }
    else: response_param = {}


    context = {'title':             _('Weather'),
               'content_title':     _('Weather'),
               'active':            'projects',
               #'content':           URL + "\n" + response_data.text,
               'search_param':      search_param,
               'response_param':    response_param,
               }
    return render(request, 'weather/index.html', context)

def get_precipitation_string(content, units):
    precipitation_string = ""
    if 'rain' in content:		
        precipitation_string = f"_('rain') {content['rain']['1h']} {units['precipitation']}"
    elif 'snow' in content:		
        precipitation_string = f"_('snow') {content['snow']['1h']} {units['precipitation']}"	
    return precipitation_string

def get_units(units_name):
    
	units = {}	
 
	if units_name == "imperial": 
		
		units["temperature"]    = "°F"
		units["wind"]           = _('miles/hour')
		units["humidity"]       = "%"
		units["precipitation"]  = _('mm')
		units["pressure"]       = "hPa"
		
	elif units_name == "metric": 
		
		units["temperature"]    = "°C"
		units["wind"]           = _('meter/sec')
		units["humidity"]       = "%"
		units["precipitation"]  = _('mm')
		units["pressure"]       = "hPa"
			
	else:
		
		units["temperature"]    = "°K"
		units["wind"]           = _('meter/sec')
		units["humidity"]       = "%"
		units["precipitation"]  = _('mm')
		units["pressure"]       = "hPa"
	
	return units