# Generated by Django 4.0.3 on 2023-06-17 09:51

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Admin1',
            fields=[
                ('admin_id', models.AutoField(primary_key=True, serialize=False)),
                ('admin_name', models.CharField(max_length=50)),
                ('password', models.CharField(max_length=8)),
            ],
            options={
                'db_table': 'admin1',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Area',
            fields=[
                ('area_pincode', models.AutoField(primary_key=True, serialize=False)),
                ('area_name', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'area',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroup',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150, unique=True)),
            ],
            options={
                'db_table': 'auth_group',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroupPermissions',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('group_id', models.IntegerField()),
                ('permission_id', models.IntegerField()),
            ],
            options={
                'db_table': 'auth_group_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthPermission',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('content_type_id', models.IntegerField()),
                ('codename', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'auth_permission',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.IntegerField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=150)),
                ('last_name', models.CharField(max_length=150)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.IntegerField()),
                ('is_active', models.IntegerField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserGroups',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('user_id', models.IntegerField()),
                ('group_id', models.IntegerField()),
            ],
            options={
                'db_table': 'auth_user_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserUserPermissions',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('user_id', models.IntegerField()),
                ('permission_id', models.IntegerField()),
            ],
            options={
                'db_table': 'auth_user_user_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Billing',
            fields=[
                ('bill_id', models.AutoField(primary_key=True, serialize=False)),
                ('bill_date', models.DateField()),
            ],
            options={
                'db_table': 'billing',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='BillingDetails',
            fields=[
                ('bill_details_id', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.IntegerField()),
            ],
            options={
                'db_table': 'billing_details',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Booking',
            fields=[
                ('booking_id', models.AutoField(primary_key=True, serialize=False)),
                ('booking_date', models.DateField()),
                ('address', models.CharField(max_length=50)),
                ('time_slote', models.IntegerField()),
                ('payment', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'booking',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='BookingDetails',
            fields=[
                ('booking_details_id', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.IntegerField()),
                ('rate', models.IntegerField()),
            ],
            options={
                'db_table': 'booking_details',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CartList',
            fields=[
                ('cart_list_id', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.IntegerField()),
                ('rate', models.IntegerField()),
            ],
            options={
                'db_table': 'cart_list',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('city_id', models.AutoField(primary_key=True, serialize=False)),
                ('city_name', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'city',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('customer_id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=50)),
                ('phone_number', models.BigIntegerField()),
                ('email', models.CharField(max_length=50)),
                ('gender', models.CharField(max_length=6)),
                ('password', models.CharField(max_length=8)),
            ],
            options={
                'db_table': 'customer',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CustomerType',
            fields=[
                ('type_id', models.AutoField(primary_key=True, serialize=False)),
                ('type_name', models.IntegerField()),
            ],
            options={
                'db_table': 'customer_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoAdminLog',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('action_time', models.DateTimeField()),
                ('object_id', models.TextField(blank=True, null=True)),
                ('object_repr', models.CharField(max_length=200)),
                ('action_flag', models.PositiveSmallIntegerField()),
                ('change_message', models.TextField()),
                ('content_type_id', models.IntegerField(blank=True, null=True)),
                ('user_id', models.IntegerField()),
            ],
            options={
                'db_table': 'django_admin_log',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoContentType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app_label', models.CharField(max_length=100)),
                ('model', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'django_content_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoMigrations',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('app', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('applied', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoSession',
            fields=[
                ('session_key', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('session_data', models.TextField()),
                ('expire_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_session',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Employee',
            fields=[
                ('employee_id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=50)),
                ('phone_no', models.IntegerField()),
                ('email', models.CharField(max_length=50)),
                ('address', models.CharField(max_length=50)),
                ('password', models.CharField(max_length=8)),
                ('image', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'employee',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Item',
            fields=[
                ('item_id', models.AutoField(primary_key=True, serialize=False)),
                ('item_name', models.CharField(max_length=50)),
                ('item_image', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'item',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ItemCharges',
            fields=[
                ('item_charges_id', models.AutoField(primary_key=True, serialize=False)),
                ('charges', models.IntegerField()),
            ],
            options={
                'db_table': 'item_charges',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Payment',
            fields=[
                ('payment_id', models.AutoField(primary_key=True, serialize=False)),
                ('amount', models.IntegerField()),
                ('payment_date', models.DateField()),
            ],
            options={
                'db_table': 'payment',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Schedule',
            fields=[
                ('schedule_id', models.AutoField(primary_key=True, serialize=False)),
                ('transaction_date', models.DateField()),
                ('transaction_type', models.CharField(max_length=50)),
                ('customer_id', models.IntegerField()),
                ('employee_id', models.IntegerField()),
            ],
            options={
                'db_table': 'schedule',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ScheduleDetails',
            fields=[
                ('schedule_details_id', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.IntegerField()),
            ],
            options={
                'db_table': 'schedule_details',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ServiceFor',
            fields=[
                ('service_for_id', models.AutoField(primary_key=True, serialize=False)),
                ('service_for_name', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'service_for',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ServiceType',
            fields=[
                ('service_id', models.AutoField(primary_key=True, serialize=False)),
                ('service_type', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'service_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Unit',
            fields=[
                ('unit_id', models.AutoField(primary_key=True, serialize=False)),
                ('unit_name', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'unit',
                'managed': False,
            },
        ),
    ]
