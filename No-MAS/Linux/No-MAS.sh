#!/bin/bash

echo "This wont take a moment and your original Files will be at ~/DNS-Files in case any Errors" 

#Copying Original Network Files to ~/DNS-Files
cd ~/
mkdir Original-DNS-Files && cd /etc
cp hosts ~/Original-DNS-Files && cp resolv.conf ~/Original-DNS-Files

#Changing hosts file to block websites...
rm /etc/hosts && rm /etc/resolv.conf 
cd ~/No-MAS-Block-Pornography-on-any-PC-/etc
cp hosts /etc


#Changing DNS-Servers
cp resolv.conf /etc


# Restarting NetworkManager 
sudo systemctl restart NetworkManager



echo "All Done Enjoy :D !!!"

