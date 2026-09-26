"""Request and response bodies. These also produce the OpenAPI schema."""
from typing import Literal, Optional

from pydantic import BaseModel, Field

SiliconStatStatus = Literal['new', 'in-progress', 'complete']
SiliconStatPriority = Literal['low', 'normal', 'high']


class SiliconStatCreate(BaseModel):
    title: str = Field(min_length=1, max_length=400)
    reference: str = Field(default="", max_length=200)
    status: SiliconStatStatus = 'new'
    priority: SiliconStatPriority = 'normal'


class SiliconStatUpdate(BaseModel):
    title: Optional[str] = Field(default=None, min_length=1, max_length=400)
    reference: Optional[str] = Field(default=None, max_length=200)
    status: Optional[SiliconStatStatus] = None
    priority: Optional[SiliconStatPriority] = None


class SiliconStat(SiliconStatCreate):
    id: int
