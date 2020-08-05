from django.urls import path
from .views import *
from django.urls import include, path


app_name = "libraryapp"

urlpatterns = [
    path('', home, name='home'),
    path('books/', list_book, name='books'),
    path('librarians/', list_librarians, name='librarians'),
    path('libraries/', list_libraries, name='libraries'),
    path('accounts/', include('django.contrib.auth.urls')),
    path('logout/', logout_user, name='logout'),
]
