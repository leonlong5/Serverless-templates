import json

print('Loading functino')

def lambda_handler(event, context):
    print("Received event: " + json.dumps(event, indent=2))

    print(("value1 = " + event['key1']))
    print(("value2 = " + event['key2']))
    print(("value3 = " + event['key3']))
    return "Hello World = " + event['key1'] + event['key2'] + event['key3']
