control 'Java Installation' do
  impact 0.7
  title 'Java Installatio'
  desc 'Checks that Java have been correctly installed'

  describe file('/tmp/node.json') do
    it { should be_file }
    it { should exist }
  end
end
