#!/bin/bash

./gradlew clean
./gradlew build
./gradlew shadowJar

cd producer
./../gradlew run


