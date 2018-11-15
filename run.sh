#!/usr/bin/env bash
# Runs the versioned jar of wiremock (for people who do not have or do not want to use docker)
java -jar wiremock-standalone-2.19.0.jar --max-request-journal-entries 5000 --local-response-templating