import json
import os

from fastapi import APIRouter

router = APIRouter()


@router.get("/open_disputes")
async def dispute():

    result = []
    for filename in os.listdir("disputes"):
        if filename.endswith(".txt"):
            idx, _ = os.path.splitext(filename)
            result.append(int(idx))

    return json.dumps(result)
