#!/bin/bash

git branch -a

touch $1

git status

git add .

git status

git commit -m "this is a test file"

git push


