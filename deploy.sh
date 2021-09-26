# build
npm run build

# save the latest commit hash as a string
LOGSTRING=$(git log)
COMMIT=$(echo $LOGSTRING | awk '{print $2}')

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m "deploy (commit: $COMMIT)"

git push -f https://github.com/fahimgha/fahim.git master:gh-pages

cd ..