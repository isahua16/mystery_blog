import random

def get_views(int):
    for i in range(int):
        post_id = random.randint(1,10)
        year = random.randint(2018,2022)
        month = random.randint(1,12)
        day = random.randint(1,30)
        print(f"({post_id}, '{year}-{month}-{day}'),")

get_views(100)