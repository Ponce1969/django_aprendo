from django.shortcuts import render
from django.http import HttpResponse

# Creamos la vista de la página principal
def primera_vista(request):
    return HttpResponse("Hola Mundo desde Django")
