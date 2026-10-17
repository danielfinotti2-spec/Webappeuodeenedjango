from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse

def index(request):
    return render(request, 'projetos/index.html')


def index(request):
    return render(request, 'projetos/index.html')

def login_view(request):
    return render(request, 'projetos/login.html')

def precos_view(request):
    return render(request, 'projetos/precos.html')