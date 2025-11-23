'''
   API: Application Progranning Interface
   Nasa API: https://api.nasa.gov/
   API_KEY_NASA: YOUR NASA API_key
   Developer: Katherin Fierro
   Date: 09112025
   Script description: Get and read data from NASA API about comets and others
   https://api.nasa.gov/neo/rest/v1/neo/3726709?api_key={api_key}
'''
import requests
import os

os.system('clear')

def get_nasa_data(api_key):
    print("::: COMET INFORMATION :::")
    url = f" https://api.nasa.gov/neo/rest/v1/neo/3726709?api_key={api_key}"

    #Realizar la solicitud a la API
    response = requests.get(url)
    response.raise_for_status() #=> Valida si se presenta algun error en la peticion
    data = response.json() #Convertir la  respuesta a formato JSON (JS Object Notation)

    print(data)
    
API_KEY_NASA = '8ZhuZlK1IVDPBw6NwuSGgh3mGdCdKbiCUr2Q4PpH'
get_nasa_data(API_KEY_NASA)

