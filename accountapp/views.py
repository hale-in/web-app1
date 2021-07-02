from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.

def write_correct(hey):
    HttpResponse("얘들아 맞춤법을 소중히 여기자")