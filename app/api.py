from fastapi import APIRouter

api_router = APIRouter()


@api_router.get('/')
async def api_info():
    return {
        "name": "fapi_crm api version 1",
        "desctiption": "awesome CRM system"
    }