require "./lib/node"
require 'rspec'

RSpec.describe Node do
		it 'exists' do
			node = Node.new("plop")
			expect(node). to be_a(Node)
		end

		it 'returns requested data' do
			node = Node.new("plop")
			expect(node.data). to eq('plop')
		end

		it 'returns nil' do
			node = Node.new('plop')
			expect(node.next_node).to be_nil
		end

end