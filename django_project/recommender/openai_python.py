import openai

OPENAI_API_KEY = ""

client = openai.OpenAI(api_key=OPENAI_API_KEY)

response = client.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "Recommend Free Data Science Courses."}
        ]
)

print(response.choices[0].message.content)