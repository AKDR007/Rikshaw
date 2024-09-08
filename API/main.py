import fastapi
from fastapi import FastAPI
import json
import os
import rsa

app = FastAPI(docs_url=None, redoc_url=None)


@app.get('/')
async def root():
    return " Don't Try to Open "

@app.get('/Login')
async def Login():
    return "Login Successful", 149

@app.get('/Signup')
async def Signup():
    return "Signup Successful", 150 