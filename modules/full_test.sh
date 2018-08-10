#!/bin/bash

while read target
do
  ./yaes ${target}
done < all.hosts
