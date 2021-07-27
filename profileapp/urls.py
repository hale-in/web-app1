from django.urls import path

from profileapp.views import ProfileCreateview
app_name = 'profileapp'
urlpatterns = [
    path('create/', ProfileCreateview.as_view(), name='create'),

]

