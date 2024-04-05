import requests

url = "http://127.0.0.1:8000/recommend_data"

uname = "Niranjan"
email = "niranjan123@samplemail.com"
password = "sample_password@123"

url1 = url+f"/{email}/{uname}/{password}"
x = requests.get(url1)
print(x.text)

# url2 = url
# data = {'uname':uname, "email":email, "password":password}
# y = requests.post(url2, data)
# print(y.text)