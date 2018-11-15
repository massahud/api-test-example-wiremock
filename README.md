Wiremock
========

Wiremock is a mock and proxy for web services. This docker image have some pre-configured mappings 
used for my hands-on presentation of API tests with Rest Assured.


## Build
```shell
docker build -t wiremock .
```

## Running

```shell
docker run --rm -ti -p 8080:8080 wiremock
```

If you do not have docker I've added a run.sh script and versioned a wiremock jar. So you just need to run ```./run.sh```. 

## Adding target mappings

To add new target mappings create a subdirectory and add json files for each mapping. See the examples in the ```mappings``` directory.

## Reference and documentation

[Wiremock user documentation](http://wiremock.org/docs/)
