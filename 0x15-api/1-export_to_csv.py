#!/usr/bin/python3
# Python Script that, using this REST API, for a given employee ID, returns
# information about his/her TODO list progress
import requests
from sys import argv
import csv

if __name__ == "__main__":
    user_id = argv[1]

    url = "https://jsonplaceholder.typicode.com/"
    user = requests.get((url + "users/%s") % user_id).json()
    tasks = requests.get((url + "todos/?userId=%s") % user_id).json()

    with open("{}.csv".format(user_id), "w") as csvfile:
        writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        for task in tasks:
            writer.writerow([user_id, user["username"],
                            task["completed"], task["title"]])
