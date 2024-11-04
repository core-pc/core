read -p "This will install the EaglerCraft 1.19 server on your core-pc. Type "y" to install, or press Ctrl+C to abort" answer

# Check the user's input
if [[ "$answer" == "y" ]]; then
    mkdir Eagl1.19ServerForCore
    cd Eagl1.19ServerForCore
    sudo apt update
    sudo apt install git curl default-jre default-jdk -y
    git clone https://github.com/iddu0/EaglercraftX-1.19-Server-Reborn
    mv EaglercraftX-1.19-Server server
    echo Server installed! Please read the documentation before starting...
    echo https://github.com/iddu0/EaglercraftX-1.19-Server-Reborn/tree/main
    read
elif [[ "$answer" == "n" ]]; then
    echo "bruh"
else
    echo "Invalid input. Please enter 'yes' or 'no'."
fi
