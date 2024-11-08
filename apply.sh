#!/bin/sh

# Function to display help
show_options() {
    echo " [?] Usage: sh file.sh --server"
    echo " [•] sh /sdcard/pubg_optimizer/apply.sh --server: global     [ PUBG Mobile Global ]"
    echo ""
    echo " [•] sh /sdcard/pubg_optimizer/apply.sh --server: bgmi     [ PUBG Mobile Bgmi ]"
}

# Check if an option is provided
if [ $# -eq 0 ]; then
    echo " [!] No server option provided, Please try again!"
    show_options
    exit 1
fi

# Process the input option
case "$1" in
    -global )
        echo "Hello! Welcome to the script."
        ;;
    -server: bgmi)
        echo "bgmi"
        ;;
    *)
        echo "Invalid option: $1"
        show_help
        exit 1
        ;;
esac