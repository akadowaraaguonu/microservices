# Generated by Django 4.2 on 2023-05-02 22:28

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='comment',
            old_name='test',
            new_name='text',
        ),
    ]
