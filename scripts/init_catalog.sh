#!/bin/bash

#  Copyright 2024-2025 Dataport. All rights reserved. Developed as part of the POSSIBLE project.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

curl --location --request PUT 'http://localhost:5081/trust/legal-participant?verificationMethod=did%3Aweb%3Adidwebservice.dev.possible-x.de%3Aparticipant%3Aa8d62eee-3a16-3a05-adc1-88404998d781%23JWK2020-PossibleLetsEncrypt' \
--header 'Authorization: Bearer yourRepoApiKey' \
--header 'Content-Type: application/json' \
--data-raw '{
    "id": "did:web:didwebservice.dev.possible-x.de:participant:a8d62eee-3a16-3a05-adc1-88404998d781",
    "gx:legalRegistrationNumber": {
        "gx:leiCode": "894500MQZ65CN32S9A66",
        "type": "gx:legalRegistrationNumber"
    },
    "gx:legalAddress": {
        "gx:countryCode": "DE",
        "gx:countrySubdivisionCode": "DE-NI"
    },
    "gx:headquarterAddress": {
        "gx:countryCode": "DE",
        "gx:countrySubdivisionCode": "DE-NI"
    },
    "schema:name": "Consumer Org",
    "schema:description": "This is an Example Org",
    "px:mailAddress": "test@possible.de",
    "@context": {
        "xsd": "http://www.w3.org/2001/XMLSchema#",
        "gx": "https://w3id.org/gaia-x/development#",
        "px": "http://w3id.org/gaia-x/possible-x#",
        "schema": "https://schema.org/",
        "vcard": "http://www.w3.org/2006/vcard/ns#"
    },
    "@type": [
        "gx:LegalParticipant",
        "px:PossibleXLegalParticipantExtension"
    ]
}'

curl --location --request PUT 'http://localhost:5081/trust/legal-participant?verificationMethod=did%3Aweb%3Adidwebservice.dev.possible-x.de%3Aparticipant%3A901e847f-bded-32d5-8301-c0e2dfa8439f%23JWK2020-PossibleLetsEncrypt' \
--header 'Authorization: Bearer yourRepoApiKey' \
--header 'Content-Type: application/json' \
--data-raw '{
    "id": "did:web:didwebservice.dev.possible-x.de:participant:901e847f-bded-32d5-8301-c0e2dfa8439f",
    "gx:legalRegistrationNumber": {
        "gx:leiCode": "894500MQZ65CN32S9A66",
        "type": "gx:legalRegistrationNumber"
    },
    "gx:legalAddress": {
        "gx:countryCode": "DE",
        "gx:countrySubdivisionCode": "DE-NI"
    },
    "gx:headquarterAddress": {
        "gx:countryCode": "DE",
        "gx:countrySubdivisionCode": "DE-NI"
    },
    "schema:name": "Provider Org",
    "schema:description": "This is an Example Org",
    "px:mailAddress": "test@possible.de",
    "@context": {
        "xsd": "http://www.w3.org/2001/XMLSchema#",
        "gx": "https://w3id.org/gaia-x/development#",
        "px": "http://w3id.org/gaia-x/possible-x#",
        "schema": "https://schema.org/",
        "vcard": "http://www.w3.org/2006/vcard/ns#"
    },
    "@type": [
        "gx:LegalParticipant",
        "px:PossibleXLegalParticipantExtension"
    ]
}'