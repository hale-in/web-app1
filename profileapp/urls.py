from django.urls import path

from profileapp.views import ProfileCreateview, ProfileUpdateView

app_name = 'profileapp'
urlpatterns = [
    path('create/', ProfileCreateview.as_view(), name='create'),
    path('update/<int:pk>', ProfileUpdateView.as_view(), name='update'),
]

