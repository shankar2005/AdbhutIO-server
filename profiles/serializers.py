from dataclasses import field
from rest_framework import serializers
from .models import *
from datetime import datetime, timedelta
from urllib.parse import urlparse

# client serializer
class ClientSerializer(serializers.ModelSerializer):
    user_details = serializers.SerializerMethodField()

    def get_user_details(self,obj):
        return {'username':obj.user.username}
        
    class Meta:
        model = Client
        fields = ['name','email','user_details']


class WorkFeedSerializer(serializers.ModelSerializer):
    def get_skills(self, obj):
        return [skill.name for skill in obj.owner.skill.all()]
    owner_name = serializers.SerializerMethodField()
    owner_id = serializers.SerializerMethodField()
    skills = serializers.SerializerMethodField()

    def get_owner_name(self, obj):
        return obj.owner.name

    def get_owner_id(self, obj):
        return obj.owner.pk

    class Meta:
        model = Work
        fields = [
            'weblink','file','demo_type','owner_name','owner_id','details','name','skills','pk'
        ]


# ===================== project serializers ===================================

class ProjectSerializerMini(serializers.ModelSerializer):

    template = serializers.SerializerMethodField()
    name = serializers.SerializerMethodField()

    def get_template(self, obj):
        if obj.project_template is not None:
            return [obj.project_template.id,  obj.project_template.name]
        return None

    def get_name(self, obj):
        return obj.title or None

    class Meta:
        model = Project
        fields = [
            'pk','title','name','stage','template',
        ]


#-------------------- project serializer ---------------------------------------
class ProjectSerializer(serializers.ModelSerializer):
    template = serializers.SerializerMethodField()
    client_details = serializers.SerializerMethodField()
    name = serializers.SerializerMethodField()
    shortlisted_artists_details = serializers.SerializerMethodField()  
    assigned_artists_details = serializers.SerializerMethodField()  

    def get_template(self, obj):
        if obj.project_template is not None:
            return [obj.project_template.id,  obj.project_template.name]
        return None
    
    def get_client_details(self,obj):
        if obj.client is not None:
            return {'id':obj.client.id,'name':obj.client.name,'email':obj.client.name}
        return None

    def get_shortlisted_artists_details(self,obj):
        return [{'id':artist.id,'name':artist.name} for artist in obj.shortlisted_artists.all()]
    
    def get_assigned_artists_details(self,obj):
        return [{'id':artist.id,'name':artist.name} for artist in obj.assigned_artists.all()]

    def get_name(self, obj):
        return obj.title or None

    class Meta:
        model = Project
        fields = [
            'pk','name','title','client','client_details','stage','brief','reference_links','template','shortlisted_artists_details',
            'shortlisted_artists','assigned_artists_details','production_solution','project_template','post_project_client_feedback',
            'contract_status','solution_fee','production_advance','negotiated_advance','final_advance',
            'advance_status','assigned_artist_payouts','artist_payout_status','final_fee_settlement_status',
            'post_project_client_total_payout','project_fee_Status','artist_discussion_updates'
        ]
        extra_kwargs = {'shortlisted_artists' : {'write_only':True}}
#------------------------------------- project serializer end ---------------------------------------

class TemplateProjectsSerializer(serializers.ModelSerializer):
    def get_skills(self, obj):
        return [skill.name for skill in obj.skills.all()]
    skills = serializers.SerializerMethodField()

    class Meta:
        model = TemplateProjects
        fields = [
            'pk','name','details','skills','weblink','file'
        ]

# ===================== project serializers end ===================================



# ====================== artist manager serializers ===========================

def social_link_filter(self,obj):
    q = {}
    links = obj.social_links.split(",")

    for social in links:
        social = social.replace(" ", "")
        domain = urlparse(social).netloc

        domain = domain.split(".")

        if "facebook" in domain:
            q["instagram"] = social

        elif "twitter" in domain:
            q["twitter"] = social
        elif "youtube" in domain:
            q["youtube"] = social
        elif "linkedin" in domain:
            q["linkedin"] = social
        elif "spotify" in domain:
            q["spotify"] = social
        elif "soundcloud" in domain:
            q["soundcloud"] = social
        elif "tiktok" in domain:
            q["tiktok"] = social
        elif "twitch" in domain:
            q["twitch"] = social
    
    return q;

# update the artist
class ArtistProfileSerializer(serializers.ModelSerializer):
    def get_skills(self, obj):
        return [skill.name for skill in obj.skill.all()]

    def get_social(self, obj):
        return social_link_filter(self, obj)

    def get_manager(self, obj):
        if obj.has_manager and obj.manager:
            return {'name': obj.manager.name, 'email': obj.manager.email, 'phone': obj.manager.phone}
        else:
            return []

    def get_language(self, obj):
        return [language.name for language in obj.languages.all()]

    def get_artistID(self, obj):
        return obj.pk

    def get_workLinks(self, obj):
        return [[work.weblink, work.demo_type, work.id] for work in obj.works_links.all()]
    
    def get_location_name(self,obj):
        if obj.location is not None:
            return obj.location.name
        return None

    skills = serializers.SerializerMethodField()
    social = serializers.SerializerMethodField()
    manager = serializers.SerializerMethodField()
    artistID = serializers.SerializerMethodField()
    language = serializers.SerializerMethodField()
    workLinks = serializers.SerializerMethodField()
    location_name = serializers.SerializerMethodField()

    class Meta:
        model = Artist
        fields = ["artistID","name","profile_pic","email","phone","skills","location","language","location_name",
            'budget_range','social','has_manager',"manager","workLinks"
        ]


class ArtistFilterSerializer(serializers.ModelSerializer):
    location = serializers.SerializerMethodField()
    languages = serializers.SerializerMethodField()
    manager = serializers.SerializerMethodField()
    works_links = serializers.SerializerMethodField()
    social_links = serializers.SerializerMethodField()
    skills = serializers.SerializerMethodField()
    genre  = serializers.SerializerMethodField()

    def get_skills(self, obj):
        return [skill.name for skill in obj.skill.all()]

    def get_social_links(self, obj):
        return social_link_filter(self, obj)

    def get_manager(self, obj):
        if obj.has_manager and obj.manager:
            return {'name': obj.manager.name, 'email': obj.manager.email, 'phone': obj.manager.phone}
        else:
            return []

    def get_languages(self, obj):
        return [language.name for language in obj.languages.all()]

    def get_works_links(self, obj):
        return [[work.weblink, work.demo_type, work.id] for work in obj.works_links.all()]
    
    def get_location(self,obj):
        if obj.location is not None:
            return {'id':obj.location.id,'name':obj.location.name}
        return None

    def get_genre(self,obj):
        return [{'id':gen.id,'name':gen.name} for gen in obj.genre.all()]


    class Meta:
        model = Artist
        fields = ['id','name','age','email','phone','skills','location','genre','languages','works_links','social_links',
        'has_manager','manager','budget_idea','am_notes','professional_rating','attitude_rating']


class ManagerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Manager
        fields = '__all__'

class ArtistActionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Artist
        fields = ["id","name","profile_pic","location","age","email","phone","skill","genre","languages","works_links","social_links",
        "has_manager","manager","budget_idea","am_notes","professional_rating","attitude_rating"]





# ====================== product manager serializers ===========================
class ArtistFeedbackSerializer(serializers.ModelSerializer):
    artist_details = serializers.SerializerMethodField()

    def get_artist_details(self,obj):
        if obj.artist is not None:
            return {'id':obj.artist.id,'name':obj.artist.name}
        return None

    class Meta:
        model = ArtistFeedback
        fields = ['artist','artist_details','pre_project_feedbace','on_project_feedback','post_project_feedback']


class ProjectFeeSerializers(serializers.ModelSerializer):
    project_details = serializers.SerializerMethodField()
    assigned_artist_payouts_details = serializers.SerializerMethodField()

    def get_project_details(self,obj):
        if obj.project is not None:
            return {'id':obj.project.id,'project':str(obj.project),'brief':obj.project.brief}
        return None
    
    def get_assigned_artist_payouts_details(self,obj):
        return [{'id':artist.id,'name':artist.name} for artist in obj.assigned_artist_payouts.all()]

    class Meta:
        model = ProjectFee
        fields = ['project','client','project_details','solution_fee','production_advance','negotiated_advance',
        'advance_status','final_advance','project_fee_Status','assigned_artist_payouts','get_assigned_artist_payouts_details',
        'artist_payout_status','final_fee_settlement_status','post_project_client_total_payout','project_fee_Status']


class ArtistRequestSerializers(serializers.ModelSerializer):
    skills_details = serializers.SerializerMethodField()
    location_details = serializers.SerializerMethodField()
    languages_details = serializers.SerializerMethodField()
    genre_details  = serializers.SerializerMethodField()
    project_details = serializers.SerializerMethodField()
    shortlisted_artists_details = serializers.SerializerMethodField()
    rejected_artists_details = serializers.SerializerMethodField()

    def get_skills_details(self, obj):
        return [skill.name for skill in obj.skill.all()]

    def get_location_details(self,obj):
        if obj.location is not None:
            return {'id':obj.location.id,'name':obj.location.name}
        return None

    def get_genre_details(self,obj):
        return [{'id':gen.id,'name':gen.name} for gen in obj.genre.all()]
    
    def get_languages_details(self, obj):
        return [language.name for language in obj.languages.all()]

    def get_project_details(self,obj):
        if obj.project is not None:
            return {'id':obj.project.id,'project':str(obj.project),'brief':obj.project.brief}
        return None
    
    def get_shortlisted_artists_details(self,obj):
        return [{'id':artist.id,'name':artist.name} for artist in obj.shortlisted_artists.all()]

    def get_rejected_artists_details(self,obj):
        return [{'id':artist.id,'name':artist.name} for artist in obj.rejected_artists.all()]


    class Meta:
        model = ArtistRequest
        fields = ['id','skill','skills_details','location','location_details','genre','genre_details',
        'languages','languages_details','other_performin_arts','budget_idea','project','project_details','production_hiring',
        'shortlisted_artists','shortlisted_artists_details','rejected_artists','rejected_artists_details']

 
