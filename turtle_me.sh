git_raw_url="https://raw.github.com/tylerrhodes/turtle_me_gently/master/"
image_path="wallpaper.jpg"
download_image() {
  if [[ ! -f $image_path ]]; then
      if hash curl 2>/dev/null; then
          echo 'curl'
          curl -O -s $git_raw_url$image_path
      else
          wget -q $git_raw_url$image_path
      fi
    fi
}

system=`uname`
pwd=`pwd`

echo "System is $system"
if [[ $system -eq 'Darwin' ]]; then
    defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true
    download_image
    $(osascript -e 'tell application "System Events" to set picture of every desktop to POSIX file "'$pwd/$image_path'"')
fi
