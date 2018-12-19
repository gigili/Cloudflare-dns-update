#!/bin/bash

#Clear any previous output - ONLY FOR DEV purpose
#clear

#Get the public IP address of the server
myIP=`dig +short myip.opendns.com @resolver1.opendns.com`

#Store the cloudflare zone ID
#Get this information from your cloudflare dashboard
myZoneID=""

#Store the DNS Zone record ID
#Get this information from the cloudflare DNS API: https://api.cloudflare.com/#dns-records-for-a-zone-list-dns-records
myDNSRecord=""

#Store the DNS Zone name
#Get this information from the cloudflare DNS API: https://api.cloudflare.com/#dns-records-for-a-zone-list-dns-records
myDNSName=""

#Your cloudflare email used for login
myEmail=""

#Your cloudflare API key
#You can find a link on your overview page for the API key
myAPIKey=""

jsonResponse=$(curl -s -X PUT https://api.cloudflare.com/client/v4/zones/${myZoneID}/dns_records/${myDNSRecord} -H "Content-Type: application/json" -H "X-Auth-Email: ${myEmail}" -H "X-Auth-Key: ${myAPIKey}" -H "cache-control: no-cache" -d "{\"type\" : \"A\", \"name\" : \"${myDNSName}\", \"content\" : \"${myIP}\" }")
isDNSUpdated=$(echo ${jsonResponse} | jq --raw-output '.success' )
errorMessage=$(echo ${jsonResponse} | jq --raw-output '.errors[].message')

#Check if the error message is empty or null and if it is, try and look for a fallback error message
if [ -z "$errorMessage" ] || [ ! -n "$errorMessage" ]
then
  errorMessage=$(echo ${jsonResponse} | jq --raw-output '.errors[].error_chain[].message')
fi

#if the DNS update failed for some reason, send an email
if ! $isDNSUpdated
then

emailTo="John Doe<test@example.net>"
emailFrom="John Doe<test@example.net>"
emailSubject="DNS update FAILED"
emailBody="Record for zone: ${myDNSName} is NOT UPDATED because: $errorMessage"

ssmtp -t << EOF
To: $emailTo
From: $emailFrom
Subject: $emailSubject

$emailBody

EOF
fi
