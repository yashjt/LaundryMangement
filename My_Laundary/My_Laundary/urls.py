"""My_Laundary URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from User_side.views import *
from django.conf.urls.static import static
from My_Laundary import settings
urlpatterns = [
    path('admin/', admin.site.urls),
    #Admin side
    # Dashboard
    path('temp/', temp), #main dashboard
    path('form/', form),
    path('login/', login),

    #Admin operations(done) 
    path('myadmin/', adminlist),
    path('addadmin/',aadding),
    path('deleteadmin/<int:id>',adelete),
    path('saveadmin/',asaving),
    path('adupdate/<int:id>/',aupdate),

    #Area operations(done) 
    path('area/', arealist),
    path('areaadd/',areaadding),
    path('deletearea/<int:id>', areadelete),
    path('savearea/',areasaving),
    path('areaupdate/<int:id>/',areaupdate),

    #BILLING OPERATIONS(done)
    path('billing/',billlist),
    path('billadd/',billadding),
    path('savebill/',billsaving),
    path('deletebill/<int:id>', billdelete),
    path('billupdate/<int:id>/',billupdate),
    #BILLING Detail OPERATIONS(pending)
    path('billdetail/',bdetail),
    # path('billadd/',billadding),
    # path('savebill/',billsaving),
    path('deletebill/<int:id>', bdetaildelete),
    # path('billupdate/<int:id>/',billupdate),

    #Booking operations
    path('booking/', bookinglist),
    path('bookingadd/',bookingadding),
    path('deletebooking/<int:id>', bookingdelete),
    path('savebooking/',bookingsaving),
    path('bookingupdate/<int:id>/',bookingupdate),

    #Booking Detail operations
    path('bookingdetail/<int:id>/', bookdetaillist),

    #cart list operations(done)
    path('cartlist/', cartlistlist),
    path('cartlistadd/',cartlistadding),
    path('deletecartlist/<int:id>',cartlistdelete),
    path('savecartlist/',cartlistsaving),
    path('cartlistupdate/<int:id>/',cartlistupdate),
    
    # path('itemCharges/',itemCharges),
    # path('itemchargessave/',itemChargessave),
    # path('itemchargesdelete/<int:id>/',itemChargesdelete),
    # path('itemchargesedit/<int:id>/',itemchargesedit),

    path('customer/', customerlist),
    path('custadd/',custadding),#(pending)
    path('deletecust/<int:id>',custdelete),
    path('savecust/',custsaving),
    path('custupdate/<int:id>/',custupdate),
    #ITEMS operations(pending)
    path('item/',itemlist), 
    path('deleteitem/<int:id>',itemdelete),
    path('itemadd/',itemadding),
    path('saveitem/',itemsaving),
    path('itemupdate/<int:id>/',itemupdate),
     #itemcharges
    path('itemcharge/',ichargelist), 
    path('deleteicharges/<int:id>/',ichargedelete),
    path('ichargesadd/',ichargesadding),
    path('saveicharges/',ichargessaving),
    path('itemchargesupdate/<int:id>/' , itemchargesupdate),
    path('unitlist/' , unitlist),

#servicefor
    path('servicefor/',serviceforlist),
    path('serviceforadd/',serviceforadd ),
    path('servicefordelete/<int:id>',servicefordelete),
    path('serviceforsave/',serviceforsave ),
    path('serviceforupdate/<int:id>/',serviceforupdate),


# customer 
    path('vindex/',vindex),
    path('vcontact/',vcontact),
    path('vlogin/',vlogin),
    path('vregistration/',vregistrations),
    path('vregistrationsave/',vregistrationsave),
    path('vservice/',vservice),
    path('vdetails/<int:id>/',vdetails),
    path('vshop/',vshop),
    path('vcart/',vcart),
    path('vcheckout/',vcheckout),
    path('vcontact/',vcontact),
    path('add_to_cart/',add_to_cart),
    path('booking_order/',booking_order),
    path('cartdelete/<int:id>/',cartdelete),
    path('profile/',vprofile),
    path('updateprofile/<int:id>/',profileedit),
    path('mybookings/',mybookings),
    path('Aboutus/',Aboutus),
    path('bookingsdetails/<int:id>/',bookingsdetails),
    path('proceed_to_razorpay',proceed_to_razorpay),
    path('',login),
    path('man/',man),
    path('women/',women),
    path('kides/',kides),
    
    # table list ends above  
     
]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
