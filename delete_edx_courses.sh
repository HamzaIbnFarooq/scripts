#! /bin/bash

courses=$1  # its a list of courses

for i in ${courses[@]} ; do
sudo -u www-data /edx/bin/python.edxapp /edx/bin/manage.edxapp cms delete_course ${i} --settings production
done
