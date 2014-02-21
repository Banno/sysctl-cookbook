node.set[:sysctl_accumulator][:values]= {
  "net.ipv4.conf.default.rp_filter" => 1,
  "net.ipv4.conf.default.accept_source_route" => 0
}

include_recipe "sysctul_accumlator::attribute_driver"

sysctl_accumlator "fs.file-max" do
  action [:write, :set]
  value 110000
  save true
end

sysctl_accumlator "fs.file-max" do
  action :write # just write this out to config
  value 5000  # set the value
  save  false # not store in node[:sysctul_accumlator]
end

sysctl_accumlator "net.ipv4.ip_forward" do
  value 0
end
