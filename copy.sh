
# Path to myid backend directory.
cd ~/documents/projects/kvalifika/myid-backend

#  Copy changelog to current directory.
cp CHANGELOG.md ~/documents/projects/kvalifika/backend-changelog

# Move back to changelog directory
cd ~/documents/projects/kvalifika/backend-changelog

git add .
git commit -m "Updated documentation to include most recent changelog"
git push origin master
