@dir = File.join(File.dirname(__FILE__))

worker_processes 2
working_directory @dir

timeout 300
listen 9191

pid "#{@dir}/tmp/pids/unicorn.pid" # pidを保存するファイル

# unicornは標準出力には何も吐かないのでログ出力を忘れずに
stderr_path "#{@dir}/log/unicorn.stderr.log"
stdout_path "#{@dir}/log/unicorn.stdout.log"
