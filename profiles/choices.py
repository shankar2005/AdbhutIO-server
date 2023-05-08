# Description: This file contains the choices for the models in the nsn app
ROLE_TYPE = (
    ("Client", "Client"),
    ("AM", "Artist Manager"),
    ("PM", "Production Manager"),
)

CHAT_BOT = (
    ("ON", "ON"),
    ("OFF", "OFF"),
)

# Base
SKILLS = (
    ("Writer", "Writer"),
    ("Lyricist", "Lyricist"),
    ("Music Producer", "Music Producer"),
    ("Vocalist", "Vocalist"),
    ("Rapper", "Rapper"),
    ("Anchor", "Anchor"),
    ("Voice Over Artist", "Voice Over Artist"),
    ("Director", "Director"),
    ("Video Producer", "Video Producer"),
    ("Video Editor", "Video Editor"),
    ("Actor", "Actor"),
    ("Influencer", "Influencer"),
    ("2D Animation Artist", "2D Animation Artist"),
    ("3D Animation Artist", "3D Animation Artist"),
    ("Static Graphics Designer", "Static Graphics Designer"),
    ("Website Designer", "Website Designer"),
    ("Website Developer", "Website Developer"),
    ("Augmented Reality Developer", "Augmented Reality Developer"),
    ("Virtual Reality Developer", "Virtual Reality Developer"),
    ("Game Developer", "Game Developer"),
)

LANGUAGE = (
    ("English", "English"),
    ("Hindi", "Hindi"),
    ("Marathi", "Marathi"),
    ("Tamil", "Tamil"),
    ("Telugu", "Telugu"),
    ("Kannada", "Kannada"),
    ("Malayalam", "Malayalam"),
    ("Bengali", "Bengali"),
    ("Gujarati", "Gujarati"),
    ("Punjabi", "Punjabi"),
    ("Other", "Other"),
)

# Misc
CLIENT_PAYOUT_STATUS = (
    ("In Progres", "In Progress"),
    ("Done", "Done"),
)


PROJECT_DEMO_STATUS = (
    ("Selected", "Selected"),
    ("Shortlisted", "Shortlisted"),
    ("Rejected", "Rejected"),
)


PROJECT_STAGE = (
    ("DreamProject", "DreamProject"),
    ("Lead", "Lead"),
    ("In Progress", "In Progress"),
    ("Halt", "Halt"),
    ("Finish", "Finish"),
)


PROJECT_FEE_STATUS = (
    ("Unpaid", "Unpaid"),
    ("Partially Paid", "Partially Paid"),
    ("Paid", "Paid"),
)


PROJECT_ADVANCE_STATUS = (
    ("Pending", "Pending"),
    ("In Progress", "In Progress"),
    ("Done", "Done"),
)
VISIBILITY_STATUS = (
        ('private', 'Private'),
        ('public', 'Public'),
    )

ARTIST_PAYOUT_STATUS = (
    ("In Progress", "In Progress"),
    ("Advance Payment Done", "Advance Payment Done"),
    ("Full Payment Done", "Full Payment Done"),
)

HIRING_STATUS = (("In Progress", "In Progress"), ("Done", "Done"))

BUDGET_RANGE = (
    ("<10k", "Less Than 10,000"),
    ("10k-20k", "10K - 20k"),
    ("20K - 40k", "20k-40k"),
    (">40k", "Above 40K"),
)


DEMO_TYPE = (
    ("Instagram", "Instagram"),
    ("Youtube", "Youtube"),
    ("Soundcloud", "Soundcloud"),
    ("Image", "Image"),
    ("Video", "Video"),
    ("Other Document", "Other"),
    ("Other Document", "Other Document"),
)
