from django.shortcuts import redirect, render
from .models import *
from django.contrib import messages
def home(request):
    return render(request,"shop/index.html")

def register(request):
    return render(request,"shop/register.html")

def collections(request):
    catagory = Catagory.objects.filter(status=0)
    return render(request,"shop/collection.html",{'catagory':catagory})

def collectionsView(request,name):
    if(Catagory.objects.filter(name=name,status=0)):
        products = Product.objects.filter(catagory__name = name)
        return render(request,"shop/products/index.html",{'products':products,'catagory_name':name})
    else:
        messages.warning(request,"No such category found")
        return redirect('collections')
