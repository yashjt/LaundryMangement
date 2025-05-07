from django.shortcuts import redirect, render
from User_side.models import *
from django.http import JsonResponse
from django.core.files.storage import FileSystemStorage
from datetime import datetime
from django.conf import settings
import razorpay 
# dashboard
def temp(request):
    return render(request,"base.html")
def login(request):
    return render(request,"mylogin.html")
def form(request):
    return render(request,"basic_elements.html")
#ADMIN OPERATIONS(completed)
# Admin List
def adminlist (request):
    myadmins=Admin1.objects.all()
    return render(request,'base.html',{'myadmins':myadmins})
#delete admin
def adelete(request,id):
    admin=Admin1.objects.get(admin_id=id)
    admin.delete()
    return redirect("/myadmin/")
#add admin
def aadding(request):
    return render(request,'addadmin.html')
#admin saving
def asaving(request):
    i=request.POST.get('id')
    n=request.POST.get('name')
    p=request.POST.get('password')
    sav=Admin1(admin_id=i,admin_name=n,password=p)
    sav.save()
    return redirect('/myadmin/')
#admin update
def aupdate(request,id):
    if request.method=="POST":
        st=Admin1.objects.get(admin_id=id)
        admin_name=request.POST.get('name')
        password=request.POST.get('password')
        st.admin_name=admin_name
        st.password=password
        st.save()
        return redirect('/myadmin/')
    st=Admin1.objects.get(admin_id=id)
    return render(request,'adminupdate.html',{'st':st})

#Area Operations(completed)
#  Area List
def arealist (request):
    areas=Area.objects.all()
    return render(request,'arealist.html',{'areas':areas})
#delete area
def areadelete(request,id):
    areas=Area.objects.get(area_pincode=id)
    areas.delete()
    return redirect("/area/")
#add area
def areaadding(request):
    cities= City.objects.values('city_id', 'city_name') #, {'cities':cities}
    return render(request,'addarea.html', {'cities':cities})
#area saving
def areasaving(request):
    #cities= City.objects.values('city_id', 'city_name')
    i=request.POST.get('pincode')
    an=request.POST.get('areaname')
    ci=request.POST.get('cityid')
    sav=Area(area_pincode=i,area_name=an,city_id=ci)
    sav.save()
    #{'cities':cities}
    return redirect('/area/')
#area update
def areaupdate(request,id):
    if request.method=="POST":
        areas=Area.objects.get(area_pincode=id)
        area_name=request.POST.get('areaname')
        city_id=request.POST.get('cityid')
        areas.area_name=area_name
        areas.city_id=city_id
        areas.save()
        return redirect('/area/')
    cities= City.objects.values('city_id', 'city_name')
    areas=Area.objects.get(area_pincode=id)
    return render(request,'areaupdate.html',{'areas':areas,'cities':cities})

#BILLING OPERATIONS
def billlist (request):
    bills=Billing.objects.all()
    return render(request,'billinglist.html',{'bills':bills})
#delete area
def billdelete(request,id):
    bills=Billing.objects.get(bill_id=id)
    bills.delete()
    return redirect("/billing/")
#Add Bill
def billadding(request):
    customers= Customer.objects.values('customer_id', 'name') #, {'cities':cities}
    return render(request,'addbill.html', {'customers':customers})
#bill saving
def billsaving(request):
    bi=request.POST.get('billid')
    ci=request.POST.get('customerid')
    bd=request.POST.get('billdate')
    sav=Billing(bill_id=bi,customer_id=ci,bill_date=bd)
    sav.save()
    return redirect('/billing/')
#Bill update
def billupdate(request,id):
    if request.method=="POST":
        bills=Billing.objects.get(bill_id=id)
        customer_id=request.POST.get('customerid')
        bill_date=request.POST.get('bdate')
        bills.customer_id=customer_id
        bills.bill_date=bill_date
        bills.save()
        return redirect('/billing/')
    customers= Customer.objects.values('customer_id','name')
    bills=Billing.objects.get(bill_id=id)
    return render(request,'billupdate.html',{'bills':bills,'customers':customers})

#BILL DETAILS OPERATIONS(pending)
#list
def bdetail(request):
    bdetails=BillingDetails.objects.all()
    return render(request,'billdetailslist.html',{'bdetails':bdetails})
#delete area
def bdetaildelete(request,id):
    bdetails=BillingDetails.objects.get(bill_details_id=id)
    bdetails.delete()
    return redirect("/billdetail/")

#BOOKING OPERATIONS(completed)
#  booking List
def bookinglist (request):
    bookings=Booking.objects.all()
    return render(request,'bookinglist.html',{'bookings':bookings})
#delete booking
def bookingdelete(request,id):
    bookings=Booking.objects.get(booking_id=id)
    bookings.delete()
    return redirect("/booking/")
#add booking
def bookingadding(request):
    cities= City.objects.values('city_id', 'city_name') , {'cities':cities}
    return render(request,'addarea.html', {'cities':cities})
#booking saving
def bookingsaving(request):
    i=request.POST.get('pincode')
    an=request.POST.get('areaname')
    ci=request.POST.get('cityid')
    sav=Area(area_pincode=i,area_name=an,city_id=ci)
    sav.save()
    return redirect('/area/')
#booking update
def bookingupdate(request,id):
    if request.method=="POST":
        areas=Booking.objects.get(area_pincode=id)
        area_name=request.POST.get('areaname')
        city_id=request.POST.get('cityid')
        areas.area_name=area_name
        areas.city_id=city_id
        areas.save()
        return redirect('/area/')
    cities= City.objects.values('city_id', 'city_name')
    areas=Area.objects.get(area_pincode=id)
    return render(request,'areaupdate.html',{'areas':areas,'cities':cities})

#BOOKING DETAILS OPERATIONS(pending)
# booking detail List
def bookdetaillist (request,id):
    book=Booking.objects.get(booking_id=id)
    bdetails=BookingDetails.objects.filter(booking=book)
    # bookings=Booking.objects.all()
    # customers=Customer.objects.all()
    # items=ItemCharges.objects.all()
    return render(request,'bookingdetaillist.html',{'bdetails':bdetails})

#CARTLIST OPERATIONS(pending)
# cart list List(d)
def cartlistlist (request):
    cartlists=CartList.objects.all()
    return render(request,'cartlist.html',{'cartlists':cartlists})
#delete cartlist(d)
def cartlistdelete(request,id):
    cartlist=CartList.objects.get(cart_list_id=id)
    cartlist.delete()
    return redirect("/cartlist/")
#add cartlist(d)
def cartlistadding(request):
    customers= Customer.objects.values('customer_id','name')
    itcharids= ItemCharges.objects.values('item_charges_id','charges')
    items= Item.objects.values('item_id','item_name') 
    # return render(request,'addarea.html')
    return render(request,'addcartlist.html',{'customers':customers,'itcharids':itcharids,'items':items})
#cartlist saving(d)
def cartlistsaving(request):
    i=request.POST.get('id')
    c=request.POST.get('customerid')
    ic=request.POST.get('itemcid')
    ii=request.POST.get('itemid')
    q=request.POST.get('qyt')
    r=request.POST.get('rate')
    sav=CartList(cart_list_id=i,customer_id=c,item_charges_id=ic,item_id=ii,quantity=q,rate=r)
    sav.save()
    return redirect('/cartlist/')
#cartlist update
def cartlistupdate(request,id):
    if request.method=="POST":
        cartlists=CartList.objects.get(cart_list_id=id)
        customer_id=request.POST.get('customerid')
        item_charges_id=request.POST.get('itemcid')
        item_id=request.POST.get('itemid')
        quantity=request.POST.get('qyt')
        rate=request.POST.get('rate')
        cartlists.customer_id=customer_id
        cartlists.item_charges_id=item_charges_id  
        cartlists.item_id=item_id
        cartlists.quantity=quantity
        cartlists.rate=rate
        cartlists.save()
        return redirect('/cartlist/')
    customers= Customer.objects.values('customer_id','name')
    itcharids= ItemCharges.objects.values('item_charges_id','charges')
    items= Item.objects.values('item_id','item_name')
    cartlists=CartList.objects.get(cart_list_id=id)
    return render(request,'cartlistupdate.html',{'cartlists':cartlists,'customers':customers,'itcharids':itcharids,'items':items})

    
def itemChargeslist(request):
    itemchargeslist=ItemCharges.objects.all()
    return render(request,'itemchargeslist.html',{'itemcharges':itemchargeslist})

def itemChargesdelete(request , id):
    itemChargeslist = ItemCharges.objects.get(item_charges_id = id )
    itemChargeslist.delete()
    redirect("/itemchargeslist/")

# def cartlistadding(request):
#     customers= Customer.objects.values('customer_id','name')
#     itcharids= ItemCharges.objects.values('item_charges_id','charges')
#     items= Item.objects.values('item_id','item_name') 
#     # return render(request,'addarea.html')
#     return render(request,'addcartlist.html',{'customers':customers,'itcharids':itcharids,'items':items})

# def itemchargesupdate(request,id):
#     if request.method=="POST":
#         itemcharges=ItemCharges.objects.get(item_charges_id=id)
#         item_id=request.POST.get('item_id')
#         service_type_id=request.POST.get('service_type_id')
#         charges=request.POST.get('charges')
#         unit_id=request.POST.get('unit_id')
#         service_for_id=request.POST.get('service_for_id')
#         itemcharges.item_id=item_id
#         itemcharges.service_type_id=service_type_id  
#         itemcharges.charges=charges
#         itemcharges.unit_id=unit_id
#         itemcharges.service_for_id=service_for_id
#         itemcharges.save()
#         return redirect('/itemcharges/')
#     items= Item.objects.values('item_id','item_name')
#     servictypes=ServiceType.objects.values('service_type_id','service_type')
#     units=Unit.objects.values('unit_id','unit_name')
#     servicefor=ServiceFor.objects.values('service_for_id','service_for_name')
#     itemcharges=CartList.objects.get(item_charges_id=id)
#     return render(request, 'itemchargesupdate.html', {'itemcharges': itemcharges,'items':items,'servictypes':servictypes,'units':units,'servicefor':servicefor})
   


def itemChargessave(request):
    item_charges_id=request.POST.get('item_charges_id')
    item=request.POST.get('item_id')
    service_type=request.POST.get('Service Type')
    charges=request.POST.get('charges')
    unit=request.POST.get('Unit')
    service_for=request.POST.get('sf')
    c=ItemCharges(item_charges_id=item_charges_id,item_id=item,service_type_id=service_type,charges=charges,unit_id=unit,service_for_id=service_for)
    c.save()
    return redirect('/itemCharges/')

def itemchargesedit(request,id):
    if request.method =="POST":
        item=request.POST.get('item_id')
        it=Item.objects.get(item_id=item)
        service_type=request.POST.get('ServiceType')
        st=ServiceType.objects.get(service_id=service_type)
        
        
        
        unit=request.POST.get('Unit')
        ut=Unit.objects.get(unit_id=unit)
        service_for=request.POST.get('sf')
        sf=ServiceFor.objects.get(service_for_id=service_for)
        charges=request.POST.get('charges')
        
        g=ItemCharges.objects.get(item_charges_id=id)
        g.item=it
        g.service_type=st
        g.charges=charges
        g.unit=ut
        g.service_for=sf
        g.save()
        return redirect('/itemCharges/')
    itemc=ItemCharges.objects.get(item_charges_id=id)
    itemcs=ItemCharges.objects.all()
    
    servciets=ServiceType.objects.all()
    items=Item.objects.all()
    units=Unit.objects.all()
    servciefs=ServiceFor.objects.all()
    
    return render(request,"itemc_edit.html",{'itemc':itemc,'itemcs':itemcs,'servciets':servciets,'items':items,'units':units,'servciefs':servciefs})


def man(request):
   if request.session.has_key('cid'):
       pass
   else:
       return redirect("/vlogin/")
   
   service_for=ServiceFor.objects.get(service_for_name='Men')
   itemcs=ItemCharges.objects.filter(service_for=service_for)
   return render(request,'visitor/shop.html',{'itemcs':itemcs})
   

   
def women(request):
   if request.session.has_key('cid'):
       pass
   else:
       return redirect("/vlogin/")
   
   service_for=ServiceFor.objects.get(service_for_name='women')
   itemcs=ItemCharges.objects.filter(service_for=service_for)
   return render(request,'visitor/shop.html',{'itemcs':itemcs})



def kides(request):
   if request.session.has_key('cid'):
       pass
   else:
       return redirect("/vlogin/")
   
   service_for=ServiceFor.objects.get(service_for_name='kides')
   itemcs=ItemCharges.objects.filter(service_for=service_for)
   return render(request,'visitor/shop.html',{'itemcs':itemcs})

def unitlist(request):
    unitlist=Unit.objects.all()
    return render(request,'unitlist.html',{'unitlist':unitlist})

def  servicefor(request):
    servicefor = ServiceFor.objects.all()
    return render(request , 'servicefor.html' , {'servicefor':servicefor})


def index(request):
   return render(request,"index.html")


def vindex(request):
    if request.session.has_key('cid'):
        cust= request.session['cid']
        custs=Customer.objects.get(customer_id=cust)
        return render(request,'visitor/index.html',{"user":custs})
    else:
        return render(request,'visitor/index.html')
    
def add_to_cart(request):
    if request.method == 'POST':
        customer= request.session['cid']
        item_charges=request.POST.get('icid')
        quantity=request.POST.get('qty')
        rate=request.POST.get('rate')
        
        
        cart = CartList( customer_id=customer, item_charges_id=item_charges, quantity=quantity, rate=rate)

        cart.save()
        # cart.rate= cart.quantity * cart.rate  
        # cart.save()
        
        
    return redirect('/vcart/')
def booking_order(request):
    if request.method == 'POST':
        customer= request.session['cid']
        booking_date=datetime.today().date()
        address=request.POST.get('address')
        time_slote=request.POST.get('ts')

        c=Booking(customer_id=customer,booking_date=booking_date,address=address,time_slote=time_slote,payment='Pending')
        c.save()
        carts = CartList.objects.filter(customer=customer)
        for cart in carts:
            bd=BookingDetails(booking=c,quantity=cart.quantity,item_charges=cart.item_charges,rate=cart.rate)
            bd.save()
        for cart in carts:
            cart.delete()
        return redirect('/vindex')
    
    return redirect('/vindex')
        
def proceed_to_razorpay(request):
    carts = CartList.objects.filter(user=request.user)
    total = 0
    for cart in carts:
         total=total+int(cart.quantity)*int(cart.rate)
  
    return JsonResponse({'total':total})      
    
def cartdelete(request,id):
    cart=CartList.objects.get(cart_list_id=id)
    cart.delete()
    return redirect('/vcart/')
def vcontact(request):
    return render(request,'visitor/contact.html')

def vdetails(request,id):
    itemcs=ItemCharges.objects.get(item_charges_id=id)
    return render(request,'visitor/detail.html',{'itemc':itemcs})

def vshop(request):
    itemcs=ItemCharges.objects.all()
    if request.method=="POST":
        st=request.POST.get('serach')
        if st!=None:
            itemcs=ItemCharges.objects.filter(charges=st)


    return render(request,'visitor/shop.html',{'itemcs':itemcs})

def vcart(request):

    customer= request.session['cid']
        
    carts=CartList.objects.filter(customer=customer)
    tot=0
    for cart in carts:
        tot=tot+int(cart.quantity)*int(cart.rate)

    return render(request,'visitor/cart.html',{'carts':carts,'total':tot})

def vcheckout(request):
    return render(request,'visitor/checkout.html')

def mybookings(request):
   if request.session.has_key('cid'):
       pass
   else:
       return redirect("/vlogin/")
   customer= request.session['cid']
   bookings=Booking.objects.filter(customer=customer)
   return render(request,"visitor/mybookings.html",{'bookings':bookings})

def bookingsdetails(request,id):
   if request.session.has_key('cid'):
       pass
   else:
       return redirect("/vlogin/")
   
   booking=Booking.objects.get(booking_id=id)
   bookinds=BookingDetails.objects.filter(booking=booking)
   return render(request,"visitor/bookingdetails.html",{'bookinds':bookinds})

def vservice(request):
    return render(request,'visitor/services.html')
def Aboutus(request):
    return render(request,'visitor/Aboutus.html')

def master(request):
    return render(request,"master.html")

def vlogin(request):
   if request.method=="POST":
      email=request.POST.get('email')
      passw=request.POST.get('password')
      custs=Customer.objects.filter(email=email,password=passw)
      for cust in custs:
         request.session['cid']=cust.customer_id
         return redirect("/vindex/")
         
      return redirect("/vlogin/")
   return render(request,"vlogin/login.html")


def vregistrations(request):
    return render(request,"vlogin/registration.html")


def vregistrationsave(request):
   
    name=request.POST.get('name')
    phone_number=request.POST.get('Phonenumber')
    email=request.POST.get('email')
    gender=request.POST.get('gender')
    password=request.POST.get('password')

    c=Customer(name=name,phone_number=phone_number,email=email,gender=gender,password=password)
    c.save()

    return render(request,"vlogin/login.html")

def vprofile(request):
   if request.session.has_key('cid'):
       pass
   else:
       return redirect("/vlogin/")
   cust= request.session['cid']
   customer=Customer.objects.get(customer_id=cust)
   return render(request,"visitor/profile.html",{'customer':customer})

def profileedit(request,id):
    if request.method =="POST":
        name=request.POST.get('name')
        phone_number=request.POST.get('Phonenumber')
        email=request.POST.get('email')
        gender=request.POST.get('gender')
        password=request.POST.get('password')
        c=Customer.objects.get(customer_id=id)
        c.name=name
        c.phone_number=phone_number
        c.email=email
        c.gender=gender
        c.password=password
        c.save()
        return redirect('/vindex/')
    return redirect('/vindex/')
    



def login(request):
   if request.method=="POST":
      name=request.POST.get('email')
      passw=request.POST.get('password')
      ads=Admin1.objects.filter(admin_name=name,password=passw)
      for ad in ads:
         request.session['aid']=ad.admin_id
         return redirect("/temp/")
      return render(request,"index.html")
   return render(request,"index.html")

# def itemlist (request):
#     items=Item.objects.all()
#     return render(request,'itemlist.html',{'items':items})
# #item Delete
# def itemdelete(request,id):
#     items=Item.objects.get(item_id=id)
#     items.delete()
#     return redirect("/item/")
# #add item pending
# def itemadding(request):
#     return render(request,'itemadd.html')
#Item OPERATIONS(pending)
# item List
def itemlist (request):
    items=Item.objects.all()
    return render(request,'itemlist.html',{'items':items})
#item Delete
def itemdelete(request,id):
    items=Item.objects.get(item_id=id)
    items.delete()
    return redirect("/item/")
#add item pending
def itemadding(request):
    return render(request,'itemadd.html')
#item saving
def itemsaving(request):
    item_name=request.POST.get('name')

    item_image=request.FILES['item_image']
    fss=FileSystemStorage()
    file=fss.save(item_image.name,item_image)
    img_url=fss.url(file)

    c=Item(item_name=item_name,item_image=img_url)
    c.save()
    return redirect('/item/')
#Item update
def itemupdate(request,id):
    if request.method =="POST":
        
        item_name=request.POST.get('item_name')
        item_image=request.FILES['item_image']
        fss=FileSystemStorage()
        file=fss.save(item_image.name,item_image)
        img_url=fss.url(file)

        g=Item.objects.get(item_id=id)
        g.item_name=item_name
        g.item_image=img_url
        g.save()
        return redirect('/item/')
    item=Item.objects.get(item_id=id)
    return render(request,"itemedit.html",{'item':item})


#customer saving(pending)
# def itemsaving(request):
#     i=request.POST.get('id')
#     n=request.POST.get('name')
#     sav=Admin1(admin_id=i,admin_name=n,password=p)
#     sav.save()
#     return redirect('/customer/')
# def itemsaving(request):
#     item_name=request.POST.get('name')

#     item_image=request.FILES['item_image']
#     fss=FileSystemStorage()
#     file=fss.save(item_image.name,item_image)
#     img_url=fss.url(file)

#     c=Item(item_name=item_name,item_image=img_url)
#     c.save()
#     return redirect('/item/')
# #Item update
# def itemupdate(request,id):
#     if request.method =="POST":
        
#         item_name=request.POST.get('item_name')
#         item_image=request.FILES['item_image']
#         fss=FileSystemStorage()
#         file=fss.save(item_image.name,item_image)
#         img_url=fss.url(file)

#         g=Item.objects.get(item_id=id)
#         g.item_name=item_name
#         g.item_image=img_url
#         g.save()
#         return redirect('/item/')
#     item=Item.objects.get(item_id=id)
#     return render(request,"itemedit.html",{'item':item})



def customerlist (request):
    customers=Customer.objects.all()
    return render(request,'custlist.html',{'customers':customers})
#customer delete
def custdelete(request,id):
    customers=Customer.objects.get(customer_id=id)
    customers.delete()
    return redirect("/customer/")
#add customer pending
def custadding(request):
    return render(request,'custadd.html')
#customer saving(pending)
def custsaving(request):
    i=request.POST.get('id')
    n=request.POST.get('name')
    pn=request.POST.get('phonenumber')
    em=request.POST.get('email')
    g=request.POST.get('gender')
    p=request.POST.get('password')
    sav=Customer(customer_id=i,name=n,phone_number=pn,email=em,gender=g,password=p)
    sav.save()
    return redirect('/customer/')
#customer update
def custupdate(request,id):
    if request.method=="POST":
        st=Customer.objects.get(customer_id=id)
        name=request.POST.get('name')
        phone_number=request.POST.get('phone_number')
        email=request.POST.get('email')
        gender=request.POST.get('gender')
        password=request.POST.get('password')
        st.name=name
        st.phone_number=phone_number
        st.email=email
        st.gender=gender
        st.password=password
        st.save()
        return redirect('/customer/')
    st=Customer.objects.get(customer_id=id)
    return render(request,'custupdate.html',{'st':st})

def ichargelist (request):
    itemcharges=ItemCharges.objects.all()
    return render(request,'item_charges.html',{'itemcharges':itemcharges})
#item charges Delete
def ichargedelete(request,id):
    itemcharges=ItemCharges.objects.get(item_charges_id=id)
    itemcharges.delete()
    return redirect('/itemcharge/')
#item charges Add
def ichargesadding(request):
    servicefors= ServiceFor.objects.values('service_for_id','service_for_name')
    units= Unit.objects.values('unit_id','unit_name')
    servicetypes= ServiceType.objects.values('service_id','service_type')
    items= Item.objects.values('item_id','item_name') 
    return render(request,'ichargesadd.html',{'servicefors':servicefors,'units':units,'servicetypes':servicetypes,'items':items})
#item charges saving(pending)
def ichargessaving(request):
    i=request.POST.get('id')
    n=request.POST.get('item')
    pn=request.POST.get('servicetypeid')
    em=request.POST.get('charges')
    g=request.POST.get('unitid')
    p=request.POST.get('servicefor')
    sav=ItemCharges(item_charges_id=i,item_id=n,service_type_id=pn,charges=em,unit_id=g,service_for_id=p)
    sav.save()
    return redirect('/itemcharge/')

def itemchargesupdate(request, id):
    if request.method == "POST":
        itemcharges = ItemCharges.objects.get(item_charges_id=id)
        itemcharges.item_id = request.POST.get('item_id')
        itemcharges.service_type_id = request.POST.get('service_type_id')
        itemcharges.charges = request.POST.get('charges')
        itemcharges.unit_id = request.POST.get('unit_id')
        itemcharges.service_for_id = request.POST.get('service_for_id')
        itemcharges.save()
        return redirect('/itemcharge/')
    
    itemcharges = ItemCharges.objects.get(item_charges_id=id)
    servicefors = ServiceFor.objects.values('service_for_id', 'service_for_name')
    units = Unit.objects.values('unit_id', 'unit_name')
    servicetypes = ServiceType.objects.values('service_id', 'service_type')
    items = Item.objects.values('item_id', 'item_name') 
    
    return render(request, 'itemchargesupdate.html', {'itemcharges': itemcharges, 'servicefors': servicefors, 'units': units, 'servicetypes': servicetypes, 'items': items})

#servicefor
def serviceforlist(request):
    servicefor = ServiceFor.objects.all()
    return render(request , 'servicefor.html' , {'servicefor':servicefor})


def servicefordelete(request , id):
    servicefor = ServiceFor.objects.get(service_for_id=id)
    servicefor.delete()
    return redirect('/servicefor/')

# def serviceforadd(request):
#     service_for_id = ServiceFor.objects.values('service_for_id')
#     service_for_name = ServiceFor.objects.values('service_for_name')
#     return render(request , 'serviceforadd.html' , {'service_for_name':service_for_name , 'service_for_id':service_for_id})


# def servicesave(request):
#     sfi = request.POST.get('id')
#     sfn = request.POST.get('name')
#     sav = ServiceFor(service_for_id=sfi , service_for_name = sfn)
#     sav.save()
#     return render(request,'serviceforadd.html',{'serviceforid':sfi , 'serviceforname': sfn})

def serviceforadd(request):
    return render(request, 'serviceforadd.html')

def serviceforsave(request):
    if request.method == "POST":
        service_for_id = request.POST.get('service_for_id')
        service_for_name = request.POST.get('service_for_name')
        service_for = ServiceFor(service_for_id=service_for_id, service_for_name=service_for_name)
        service_for.save()
        return redirect('/servicefor/')
    else:
        return redirect('/serviceforadd/')
    
    
def serviceforupdate(request, id):
    service_for = ServiceFor.objects.get(service_for_id=id)
    if request.method == "POST":
        service_for_name = request.POST.get('service_for_name')
        # Update the service_for object with the new data
        service_for.service_for_name = service_for_name
        service_for.save()
        return redirect('/servicefor/')
    return render(request, 'serviceforupdate.html', {'service_for': service_for})


