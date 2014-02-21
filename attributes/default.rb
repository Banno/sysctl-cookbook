default[:sysctl_accumulator] ||= {}
default[:sysctl_accumulator][:values] ||= {}

default[:sysctl_accumulator][:config_file] = "/etc/sysctl.conf"
if platform_family == "debian"
  default[:sysctl_accumulator][:config_file] = "/etc/sysctl.d/99-chef.conf"
end
