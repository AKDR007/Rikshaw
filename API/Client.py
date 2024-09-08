import requests, json
import threading as T
import asyncio

def Login():
    R = requests.get(Login_url)

    S = requests.get(Signup_url)

    

    print(f"\nLogin Result: {json.loads(R.content)}\nSignup Result: {json.loads(S.content)}\n")

# def Signup():
#     R = requests.get(Signup_url)

#     print(f"\n\nSignup Result: {json.loads(R.content)}\n\n")

Login_url="http://localhost:3060/Login"
Signup_url="http://localhost:3060/Signup"


while True:
    """D1 = T.Thread(target=Login())
    D2 = T.Thread(target=Signup())

    D1.start()
    D2.start()

    D1.join()
    D2.join()"""
    Login()
    # Signup()