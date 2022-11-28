# Generated by Django 4.1.2 on 2022-11-01 12:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_customer_landmark_alter_orderplaced_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orderplaced',
            name='status',
            field=models.CharField(choices=[('Cancel', 'Cancel'), ('On the way', 'On the way'), ('Accepted', 'Accepted'), ('Packed', 'Packed'), ('Delivered', 'Delivered')], default='Pending', max_length=50),
        ),
    ]