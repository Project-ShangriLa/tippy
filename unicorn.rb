@dir = Dir::pwd

worker_processes 8 # CPUのコア数に揃える
working_directory @dir

timeout 60

pid "/var/unicorn.pid"

stderr_path "#{@dir}/log/unicorn.stderr.log"
stdout_path "#{@dir}/log/unicorn.stdout.log"

listen "/var/unicorn.sock", :backlog => 1024
