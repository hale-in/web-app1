from django.http import HttpResponse, request
from django.shortcuts import render


# Create your views here.

def hello_world(request):
    return render(request, 'base.html')