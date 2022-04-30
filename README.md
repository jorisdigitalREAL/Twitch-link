![2022-04-30_13-37](https://user-images.githubusercontent.com/101760116/166118364-c4932e2f-38bb-412f-b490-5d7b61ce7152.png)

# Twitch-link
 Very simple scritp to automate Streamlink to view Twitch.tv streams in mpv/vlc.&nbsp;&nbsp;&nbsp;&nbsp;
 Download twitch.sh and place in user dir or dir of choice.&nbsp;&nbsp;&nbsp;&nbsp;
 chmod +x ./twitch.sh&nbsp;&nbsp;&nbsp;&nbsp;
 chmod +x ./favorites.sh&nbsp;&nbsp;&nbsp;&nbsp;
 twitch.sh will create favorites.sh and status.txt. I included a favorites.sh so you can chmod it before running twitch-link.&nbsp;&nbsp;&nbsp;&nbsp;
 if you are running vlc you can edit line 41 mpv to vlc; echo $(streamlink -p mpv www.twitch.tv/$name best)&nbsp;&nbsp;&nbsp;&nbsp;
