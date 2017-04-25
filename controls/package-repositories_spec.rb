control 'epel package-repositories' do
  impact 0.7
  title 'epel package-repositories'
  desc 'epel repository should be added to the list'

  describe command('yum repolist') do
    its(:stdout) { should match('\* epel\:') }
  end
end
