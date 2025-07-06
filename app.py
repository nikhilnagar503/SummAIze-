import boto3
import os
import logging
from openai import OpenAI


logger = logging.getLogger()
logger.setLevel(logging.INFO)



if not logger.handlers:
    handler = logging.StreamHandler()
    formatter = logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    
    
