import base64
import pandas

def encoding(x):
    x = x.encode("ascii")
    base64_bytes = base64.b64encode(x)
    return base64_bytes.decode("ascii")
    
    
def model(dbt, fal):
    dbt.config(materialized="table")
    
    df = dbt.source('public', 'output_people_raw')
    
    df['family_name'] = df['family_name'].apply(encoding)
    
    # Test behaviour when adding a new column
    df['stage_id'] = 'abc'

    return df
