#!/bin/bash
echo -e "\nlive ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
echo -e "polkit.addRule(function(action, subject) { return polkit.Result.YES; });" > /usr/share/polkit-1/rules.d/live.rules
echo -e "[Seat:*]\ngreeter-session=lightdm-gtk-greeter\nautologin-user=live\nautologin-user-timeout=0" > /etc/lightdm/lightdm.conf
echo -e "live\nlive\n\n\n\n\n\n\n\n" | adduser live
echo -e "live\nlive\n" | passwd
exec init
