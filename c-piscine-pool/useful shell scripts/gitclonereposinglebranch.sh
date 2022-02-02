echo "Enter the repo URL: "
read url
echo "Enter the single branch name: "
read branch
git clone $url --branch $branch