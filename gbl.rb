
def diff_branches br1, br2
  puts "#{br1} .. #{br2}"
  ahead = `git rev-list #{br1}..#{br2} | wc -l`
  behind = `git rev-list #{br2}..#{br1} | wc -l`
  puts "#{br2} is #{ahead.strip} ahead #{br1}"
  puts "#{br2} is #{behind.strip} behind #{br1}"
end

diff_branches "master", "deploy_staging"
