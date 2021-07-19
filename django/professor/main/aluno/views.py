from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from django.contrib import messages


def index(request):
    return render(request, 'jumbotron.html')
