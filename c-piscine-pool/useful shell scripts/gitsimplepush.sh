echo "Enter the repo location url: "
read url
echo "Enter the branch name: "
read branch
echo "Enter a comment..."
read comment
cd $url
git add .
git commit -m "$comment"
git push -u origin $branch