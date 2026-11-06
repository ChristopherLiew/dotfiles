function gmlu --description "Run go list for a specified module with update info in JSON"
    if test (count $argv) -lt 1
        echo "Usage: gmlu <module-path>"
        return 1
    end

    go list -m -u -json $argv[1]
end
