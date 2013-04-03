git_raw_url="https://raw.github.com/tylerrhodes/turtle_me_gently/master"
image_path="/wallpaper.jpg"
download_image() {
    `wget $git_raw_url$image_path`
}

system=`uname -o`
pwd=`pwd`

echo "System is $system"
if [[ $system -eq 'Darwin' ]]; then
    defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true
    download_image()
    osascript -e 'tell application "System Events" to set picture of every desktop to POSIX file "$pwd$image_path"'
fi
