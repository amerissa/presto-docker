#!/bin/bash


echo node.id=$(uuidgen) >> /usr/lib/presto/etc/config.properties
node.environment=$ENV >> /usr/lib/presto/etc/config.properties
coordinator=$COORDINATOR >> /usr/lib/presto/etc/config.properties
discovery.uri=http:/$LB:8080 >> /usr/lib/presto/etc/config.properties

/usr/lib/presto/bin/launcher run
