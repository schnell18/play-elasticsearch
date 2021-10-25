#!/usr/bin/env python
# -*- coding: utf-8 -*-

import requests;

def do_scroll(url1, url2):
    # initial scroll request
    r = requests.get(url1, json={'query': { 'match_all': {}}, 'sort':
        ['_doc'], 'size': 200})

    while True:
        if r.status_code != 200 :
            break;
        json = r.json();
        if not '_scroll_id' in json:
            break
        if len(json['hits']['hits']) > 0:
            print(json['hits']['hits'])
            scroll_id = json['_scroll_id'];
            r = requests.get(url2, json={'scroll': '2m', 'scroll_id': scroll_id})

if __name__ == '__main__':
    url1 = 'http://localhost:9200/bank/_search?scroll=2m'
    url2 = 'http://localhost:9200/_search/scroll'
    do_scroll(url1, url2);
