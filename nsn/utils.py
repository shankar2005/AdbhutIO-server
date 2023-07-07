import json
from django.conf import settings
from django.core.mail import EmailMessage

def send_email_token(email, token):
    try:
        subject = 'Adbhut Account Activation'
        message = f"""
            Hello {email.split('@')[0]}!

            Thank you for signing up with Adbhut. We're excited to have you on board. To get started, please click on the link below to activate your account:

            Activate Account: https://dev.nsnco.in/api/v1/auth/verify_email/{token}/

            By activating your account, you will be redirected to the login page where you can access your Adbhut.io account and explore all our exciting features.

            If you did not sign up for an account on Adbhut.io, please ignore this email.

            If you have any questions or need assistance, feel free to reach out to our support team at entertain@nsnco.in.

            Welcome to Adbhut!

            Best regards,
            Team NSNCO
            """
        # For auth in local server replace the link with
        # http://127.0.0.1:8000/api/v1/auth/verify_email/{token}/
        # you can find the token in the local db as email_token field
        email_from = settings.EMAIL_HOST_USER
        recipient_list = [email]
        email = EmailMessage(subject=subject,body=message,from_email= email_from,to= recipient_list,reply_to=recipient_list ,headers={'Content-Type': 'text/plain'},)
        email.send()
    except Exception as e:
        return False
    return True

def processChatbotData(data):
    nodes = data["nodes"]
    edges = data["edges"]
    details = data["details"]
    newNode = {}

    for node in nodes:
        newNode[node["id"]] = {
            "id": node["id"],
            "type": node["type"],
            "data": node["data"],
        }

    return json.dumps({"nodes": newNode, "edges": edges})
