import requests

req = requests.get('https://swapi.co/api/people/')

x=0
for object in req.json().get('results'):

    x=x+1

print(x)
