alias ls='eza -lG --icons'

alias del='trash-put'

alias swayconf='sudo nvim ~/.config/sway/config'
alias fuzzelconf='sudo nvim ~/.config/fuzzel/fuzzel.ini'
alias kittyconf='sudo nvim ~/.config/kitty/kitty.conf'

alias vpnconnect='sudo openvpn --config /etc/openvpn/client/pvpn-usca161-udp.ovpn --mute-replay-warnings'

#alias sc3='scala3'
#alias scc3='scalac3'

alias lock='swaylock --daemonize'
alias locksleep='swaylock --daemonize && systemctl suspend'

setvol() {
    if [ $1 -le 100 ]; then
        pactl set-sink-volume @DEFAULT_SINK@ "$1"%
    fi
}

cdl() {
	cd $1
	ls
}
