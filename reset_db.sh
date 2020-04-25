#!/bin/bash

rails db:environment:set RAILS_ENV=development

echo "Droping Data Bases"
rails db:drop

echo "Creating Data Bases"
rails db:create

echo "Migrating"
rails db:migrate
