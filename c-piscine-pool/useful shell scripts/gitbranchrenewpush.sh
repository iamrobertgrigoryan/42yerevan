echo "Enter the repo location url: "
read url
echo "Enter the branch name: "
read branch
echo "Enter a comment..."
read comment
cd $url
git checkout --orphan temp_branch
git add .
git commit -m "$comment"
git branch -D $branch
git branch -m $branch
git push -f origin $branch