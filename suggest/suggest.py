import json
import requests

API_KEY = "47c765822f48177f851040d5af5be2a110089302"
BASE_URL = "https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/{}"

def suggest(query, resource, count=10):
    url = BASE_URL.format(resource)
    headers = {"Authorization": "Token {}".format(API_KEY), "Content-Type": "application/json"}
    data = {"query": query, "count": count}
    r = requests.post(url, data=json.dumps(data), headers=headers)
    return r.json()

if __name__ == "__main__":
    # import sys

    query = 7719402047 # sys.argv[1]
    print(suggest(query, "party", count=1))
