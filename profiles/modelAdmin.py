from django.contrib import admin


class TemplateProjectsAdmin(admin.ModelAdmin):
    filter_horizontal = ('skills',)
    fieldsets = [
        ("Work", {'fields': [
            "name",  'details', "skills"

        ]})
    ]


class WorkAdmin(admin.ModelAdmin):

    fieldsets = [
        ("Work", {'fields': [
            "owner",  ('show_in_top_feed', 'demo_type'),
             ("weblink","file"), 
             "is_demo", "from_client", "is_active",
        ]})
    ]


class ClientAdmin(admin.ModelAdmin):
    filter_horizontal = ('projects', 'recommended_artists')
    fieldsets = [
        ("Contact", {'fields': [
            "name", ("email"), 'user', "details",

        ]
        }),
        ("Contract", {'fields': [
            'projects', 'client_previous_payout',
            'production_suggested_project_advance', 'latest_project_advance',
            'latest_client_payout_status', 'total_client_payout',
            'contract_document_signing_status', 'recommended_artists'
        ]}),
    ]


class ArtistAdmin(admin.ModelAdmin):
    filter_horizontal = ('skill', 'genre', 'languages', 'works_links')

    fieldsets = [
        ("Contact", {'fields': [
            ("name", "age"),
            ('artist_intro'),
            ("email", "phone"),
            ("skill", "genre"),
            ("location", "languages"),
            "profile_pic"
        ]}),
        ("Work", {
            "fields": [
                "works_links",
                "social_links",
                ("has_manager",
                 "manager"),
                'other_arts'
            ]}),
        ("Contract", {"fields": [
            'has_agreement', 'agreement',
            ("professional_rating", "attitude_rating"),
         ("budget_range", "budget_idea"
          ),

         ("am_notes",
                "pm_notes",),
         ]})
    ]


class ArtistFeedbackAdmin(admin.ModelAdmin):
    fieldsets = [
        ("Feedback", {'fields': [
            "artist", "pre_project_feedbace", "on_project_feedback", "post_project_feedback"
        ]})
    ]


class ProjectDemoAdmin(admin.ModelAdmin):
    fieldsets = [
        ("Project", {'fields': [
            'artist', 'demo_work', 'project']}),
        ("Review", {'fields': [
            'comment', 'status'
        ]})
    ]


class ProjectAdmin(admin.ModelAdmin):
    filter_horizontal = ('shortlisted_artists',
                         'assigned_artists', 'showcase_demos', 'project_demos')

    fieldSets = [
        ("Brief", {'fields': [
            'client', 'stage', 'brief', 'production_solution', 'comments'
        ]}),
        ("Status", {'fields': [
            'shortlisted_artists', 'assigned_artists', 'showcase_demos', 'project_demos'
        ]}),
        ('Feedback', {
            'fields': [
                'post_project_client_feedback', 'project_fee_Status', 'contract_status'
            ]
        })
    ]


class ProjectFeeAdmin(admin.ModelAdmin):
    fieldsets = [
        ("Project", {'fields': [
            'project', 'client', 'solution_fee'
        ]}),
        ("Info", {'fields': [
            'production_advance', 'negotiated_advance', 'final_advance',
            'post_project_client_total_payout'
        ]}),
        ('status', {
            'fields': [
                'advance_status', 'assigned_artist_payouts', 'artist_payout_status',
                'final_fee_settlement_status',   'project_fee_Status'
            ]})

    ]


class ArtistRequestAdmin(admin.ModelAdmin):
    filter_horizontal = ('skill', 'genre', 'languages')
    fieldsets = [
        ("Brief", {'fields': [
            'skill', 'location', 'genre',  'languages'
        ]}),
        ("Details", {'fields': [
            'other_performin_arts', 'budget_idea', 'budget_range', 'project',
            'production_hiring', 'service_hiring', 'shortlisted_artists', 'rejected_artists',
            'target', 'comments',  'hiring_status'
        ]})

    ]
