from django.contrib import admin
from .models import *
from .modelAdmin import *
# Register your models here.


admin.site.register(Work, WorkAdmin)
admin.site.register(Client, ClientAdmin)
admin.site.register(Artist, ArtistAdmin)
admin.site.register(ArtistFeedback, ArtistFeedbackAdmin)
admin.site.register(ProjectDemo,  ProjectDemoAdmin)
admin.site.register(Project, ProjectAdmin)
admin.site.register(ProjectFee,  ProjectFeeAdmin)
admin.site.register(ArtistRequest, ArtistRequestAdmin)

admin.site.register(TemplateProjects, TemplateProjectsAdmin)

admin.site.register(Manager)
