echo "Enter the repo URL: "
read url
echo "Enter the branch name: "
read branch
echo "Enter the single folder directory (eg folder/subfolder: "
# put \ and space instead of simple space if directory name contains spaces
read directory
git init
git remote add origin $url
git config core.sparsecheckout true
echo $directory >> .git/info/sparse-checkout
git pull origin $branch