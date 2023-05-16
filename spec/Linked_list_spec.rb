require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    it "exists" do
        list = LinkedList.new
         expect(list).to be_a(LinkedList)
         expect(list.head).to eq(nil)
    end

    it "can append" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq(nil)
        expect(list.head.data).to eq("doop")
    end
end

# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"