control 'Java Installation' do
  impact 0.7
  title 'Java Installatio'
  desc 'Checks that Java have been correctly installed'

  describe command("java -version 2>&1 >/dev/null | grep 'java' | awk '{print $1}'") do
    its(:stdout) { should match(/java/) }
    its(:stdout) { should_not match(/openjdk/) }
  end
end
