		if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Function to change keyboard layout for Sway
function set_keyboard_layout
    if test (count $argv) -eq 0
        echo "Usage: set_keyboard_layout <layout>"
        return 1
    end
    swaymsg input "*" xkb_layout $argv[1]
end
