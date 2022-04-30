![2022-04-30_13-37](https://user-images.githubusercontent.com/101760116/166118364-c4932e2f-38bb-412f-b490-5d7b61ce7152.png)

# Twitch-link
 Very simple scritp to automate Streamlink to view Twitch.tv streams in mpv/vlc.
	
 Download twitch.sh and place in user dir or dir of choice.
	
 chmod +x ./twitch.sh.
	
 chmod +x ./favorites.
	
 twitch.sh will create favorites.sh and status.txt. I included a favorites.sh so you can chmod it before running twitch-link.
	
 If you are running vlc you can edit line 41 mpv to vlc; echo $(streamlink -p mpv www.twitch.tv/$name best).
