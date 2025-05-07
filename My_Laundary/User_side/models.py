from django.db import models

# Create your models here.

class Admin1(models.Model):
    admin_id = models.AutoField(primary_key=True)
    admin_name = models.CharField(max_length=50)
    password = models.CharField(max_length=8)

    class Meta:
        managed = False
        db_table = 'admin1'


class Area(models.Model):
    area_pincode = models.AutoField(primary_key=True)
    area_name = models.CharField(max_length=50)
    city = models.ForeignKey('City', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'area'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group_id = models.IntegerField()
    permission_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group_id', 'permission_id'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type_id = models.IntegerField()
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type_id', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user_id = models.IntegerField()
    group_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user_id', 'group_id'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user_id = models.IntegerField()
    permission_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user_id', 'permission_id'),)


class Billing(models.Model):
    bill_id = models.AutoField(primary_key=True)
    customer = models.ForeignKey('Customer', models.DO_NOTHING)
    bill_date = models.DateField()

    class Meta:
        managed = False
        db_table = 'billing'


class BillingDetails(models.Model):
    bill_details_id = models.AutoField(primary_key=True)
    bill = models.ForeignKey(Billing, models.DO_NOTHING)
    item_charges = models.ForeignKey('ItemCharges', models.DO_NOTHING)
    quantity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'billing_details'


class Booking(models.Model):
    booking_id = models.AutoField(primary_key=True)
    customer = models.ForeignKey('Customer', models.DO_NOTHING)
    booking_date = models.DateField()
    address = models.CharField(max_length=50)
    time_slote = models.CharField(max_length=50)
    payment = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'booking'


class BookingDetails(models.Model):
    booking_details_id = models.AutoField(primary_key=True)
    booking = models.ForeignKey(Booking, models.DO_NOTHING)
    quantity = models.IntegerField()
    item_charges = models.ForeignKey('ItemCharges', models.DO_NOTHING)
    rate = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'booking_details'


class CartList(models.Model):
    cart_list_id = models.AutoField(primary_key=True)
    customer = models.ForeignKey('Customer', models.DO_NOTHING)
    item_charges = models.ForeignKey('ItemCharges', models.DO_NOTHING)
    item = models.ForeignKey('Item', models.DO_NOTHING)
    quantity = models.IntegerField()
    rate = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'cart_list'


class City(models.Model):
    city_id = models.AutoField(primary_key=True)
    city_name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'city'


class Customer(models.Model):
    customer_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)
    phone_number = models.BigIntegerField()
    email = models.CharField(max_length=50)
    gender = models.CharField(max_length=6)
    password = models.CharField(max_length=8)

    class Meta:
        managed = False
        db_table = 'customer'


class CustomerType(models.Model):
    type_id = models.AutoField(primary_key=True)
    type_name = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'customer_type'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type_id = models.IntegerField(blank=True, null=True)
    user_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Employee(models.Model):
    employee_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)
    phone_no = models.IntegerField()
    email = models.CharField(max_length=50)
    address = models.CharField(max_length=50)
    password = models.CharField(max_length=8)
    image = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'employee'


class Item(models.Model):
    item_id = models.AutoField(primary_key=True)
    item_name = models.CharField(max_length=50)
    item_image = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'item'


class ItemCharges(models.Model):
    item_charges_id = models.AutoField(primary_key=True)
    item = models.ForeignKey(Item, models.DO_NOTHING)
    service_type = models.ForeignKey('ServiceType', models.DO_NOTHING)
    charges = models.IntegerField()
    unit = models.ForeignKey('Unit', models.DO_NOTHING)
    service_for = models.ForeignKey('ServiceFor', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'item_charges'


class Payment(models.Model):
    payment_id = models.AutoField(primary_key=True)
    customer = models.ForeignKey(Customer, models.DO_NOTHING)
    amount = models.IntegerField()
    payment_date = models.DateField()
    bill = models.ForeignKey(Billing, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'payment'


class Schedule(models.Model):
    schedule_id = models.AutoField(primary_key=True)
    transaction_date = models.DateField()
    transaction_type = models.CharField(max_length=50)
    customer_id = models.IntegerField()
    employee_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'schedule'


class ScheduleDetails(models.Model):
    schedule_details_id = models.AutoField(primary_key=True)
    schedule = models.ForeignKey(Schedule, models.DO_NOTHING)
    item_charges = models.ForeignKey(ItemCharges, models.DO_NOTHING)
    quantity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'schedule_details'


class ServiceFor(models.Model):
    service_for_id = models.AutoField(primary_key=True)
    service_for_name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'service_for'


class ServiceType(models.Model):
    service_id = models.AutoField(primary_key=True)
    service_type = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'service_type'


class Unit(models.Model):
    unit_id = models.AutoField(primary_key=True)
    unit_name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'unit'

class CartList(models.Model):
    cart_list_id = models.AutoField(primary_key=True)
    customer = models.ForeignKey('Customer', models.DO_NOTHING)
    item_charges = models.ForeignKey('ItemCharges', models.DO_NOTHING)
    quantity = models.IntegerField()
    rate = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'cart_list'
        