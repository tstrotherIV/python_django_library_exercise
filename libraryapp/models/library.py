from django.db import models


class Library(models.Model):

    title = models.CharField(max_length=50)
    address = models.CharField(max_length=50)

    class Meta:
        verbose_name = ("library")
        verbose_name_plural = ("libraries")

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse("Library_detail", kwargs={"pk": self.pk})
