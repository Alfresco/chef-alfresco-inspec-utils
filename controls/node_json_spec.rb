control 'Node Json File existance' do
  impact 0.7
  title 'Node Json File existance'
  desc 'node.json file should exist'

  describe file('/tmp/node.json') do
    it { should be_file }
    it { should exist }
  end
end
