control 'Java Installation' do
  impact 0.7
  title 'Java Installatio'
  desc 'Checks that Java have been correctly installed'

  describe command('yum repolist') do
    its(:stdout) { should match('* epel:') }
  end
end
