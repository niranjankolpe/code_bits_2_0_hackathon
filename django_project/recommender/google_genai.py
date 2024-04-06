import os

import google.generativeai as genai

genai.configure(api_key=os.environ['API_KEY'])

model = genai.GenerativeModel('gemini-pro')

response = model.generate_content('Give career path on data science along with suggesting courses (only points and headings without any contect.)')
print(response.text)