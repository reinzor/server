#!/usr/bin/env python

import urllib2
import re

try:
    page_info = urllib2.urlopen("http://mijnip.nl/").read()
    
    ip_search = re.compile("<div id=\"remoteIPDiv\">\s*(\d+\.\d+\.\d+\.\d+)</div>").search(page_info)
    if ip_search:
        print ip_search.group(1)
    else:
        print "Failed to extract ip from page"
      
except:
    print "Could not fetch page"
