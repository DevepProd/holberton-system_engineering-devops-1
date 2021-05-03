#!/usr/bin/python3
# Python Script that, using this REST API, for a given employee ID, returns
# information about his/her TODO list progress
import requests
from sys import argv
import json

if __name__ == "__main__":
    user_id = argv[1]

    url = "https://jsonplaceholder.typicode.com/"
    user = requests.get((url + "users/%s") % user_id).json()
    tasks = requests.get((url + "todos/?userId=%s") % user_id).json()

    myjsonDict = {}
    myjsonDict[user_id] = []

    for task in tasks:
        myjsonDict[user_id].append({"task": task["title"],
                                   "completed": task["completed"],
                                   "username": user["username"]})

    with open("{}.json".format(user_id), "w") as jsonfile:
        jsonfile.write((json.dumps(myjsonDict)))
