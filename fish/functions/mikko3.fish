function mikko3
    if test (count $argv) -lt 2
        echo "Usage: mikko3 <filename> <text>"
        return 1
    end
    set -l filename $argv[1]
    set -l msg $argv[2]
    say -v "Mikko" -o ~/Music/$filename.aiff $msg
    lame -m m ~/Music/$filename.aiff ~/Music/$filename.mp3
    rm ~/Music/$filename.aiff
end
