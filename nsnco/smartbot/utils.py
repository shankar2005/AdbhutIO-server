
import json


def processChatbotData(data):

    nodes = data['nodes']
    edges = data['edges']
    details = data['details']
    newNode = {}

    for node in nodes:
        newNode[node['id']] = {
            'id': node['id'], 'type': node['type'], 'data': node[
                'data'
            ]}

    return json.dumps({"nodes": newNode,  "edges": edges})
