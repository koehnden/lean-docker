from flask import Flask
from redis import Redis

app = Flask(__name__)


redis_client = Redis(
    host='redis',
    port=6379
)


def init_visits():
    redis_client.set("visits", 0)


@app.route('/')
def display_visit_count():
    visits = get_visits()
    response = make_response(visits)
    update_visits(visits)
    return response


def get_visits():
    visits = redis_client.get("visits")
    return int(visits)


def make_response(visits):
    return  f"This page had {visits} visits"


def update_visits(visits):
    redis_client.set("visits", visits + 1)


if __name__ == "__main__":
    init_visits()
    app.run(debug=True, host="0.0.0.0", port=5000)




