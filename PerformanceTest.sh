#!/bin/sh

echo -e " <html> \n <body>" > Report.html
echo "Performance Test Results for Monorepo Repository " >> Report.html
time git clone >> Report.html
echo -e " \n " >> Report.html
time git status >> Report.html
echo -e " \n " >> Report.html
time git status -uno >> Report.html
echo -e " \n " >> Report.html
time git checkout -b Test >> Report.html
echo -e " \n " >> Report.html
time git checkout master >> Report.html
echo -e " \n " >> Report.html
time git branch --list >> Report.html
echo -e " \n " >> Report.html
time git branh -a >> Report.html
echo -e " \n " >> Report.html
time git branch -d test >> Report.html
echo -e " \n " >> Report.html
time git gc >> Report.html
echo -e " \n " >> Report.html
time git pull >> Report.html
echo -e " \n " >> Report.html
touch a;
time git checkout master >> Report.html
echo -e " \n " >> Report.html
time git add . >> Report.html
echo -e " \n " >> Report.html
time git commit -m "testing Performance" >> Report.html
echo -e " \n " >> Report.html
time git push >> Report.html
echo -e " \n " >> Report.html

cd ..;
time rm -rf * >> Report.html

echo -e " </body> \n </html>" >> Report.html
