#!/bin/bash
rm -f /var/run/apache2.pid
rm -f /var/run/apache2/*
exec apache2 -DFOREGROUND
