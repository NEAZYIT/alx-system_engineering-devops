#  0x0A Configuration Management 🔧

## Categories 🗃️
DevOps, SysAdmin, Scripting, CI/CD

## Background Context 🔍

During my tenure at SlideShare, I developed an auto-remediation tool named Skynet, aimed at monitoring, scaling, and rectifying issues in Cloud infrastructure. Skynet utilized MCollective, a parallel job-execution system allowing simultaneous command execution across multiple servers based on specific filters (e.g., server hostname or metadata).

Unfortunately, a bug in the code resulted in sending nil to the filter method, leading to two significant issues:
1. MCollective interpreted nil as a signal to target 'all servers'.
2. The action applied was to terminate the selected servers.

This unintended shutdown impacted 75% of our document conversion infrastructure, disrupting user capabilities to convert their PDFs, powerpoints, and videos.

Thanks to Puppet, we managed to restore our infrastructure within an hour, which was quite impressive considering the complexity involved. This manual process would have been substantially more time-consuming.

Obviously, writing Puppet code for infrastructure requires an investment of time and energy. However, in the long term, it proves to be a must-have tool.

[Here's a tweet about my experience](https://twitter.com/devopsreact/status/836971570136375296)

## Resources 🛠️

### Read or watch: 📚

- [Intro to Configuration Management](https://www.digitalocean.com/community/tutorials/an-introduction-to-configuration-management)
- [Puppet resource type: file](https://www.puppet.com/docs/puppet/5.5/types/file.html)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](https://www.puppet.com/blog)
- [Puppet lint](http://puppet-lint.com/)
- [Puppet emacs mode](https://github.com/voxpupuli/puppet-mode)

## Requirements 📝

### General 🌐

- All files interpreted on Ubuntu 20.04 LTS
- All files ending with a new line
- Mandatory README.md file at the root of the project folder
- Puppet manifests must:
  - Pass puppet-lint version 2.1.1 without errors
  - Run without errors
  - Start with a comment explaining the manifest's purpose
  - End with the .pp extension

### Installation commands 💻

```bash
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```

No need to attempt upgrading versions. This project is for familiarizing with basic syntax, virtually identical in newer Puppet versions.

## Puppet 5 Docs
### Install puppet-lint
```bash
$ gem install puppet-lint
```

## Tasks 📋

### Create a file
- Puppet manifest: 0-create_a_file.pp
- Task: Create a file in /tmp with specified permissions, owner, group, and content.

### Install a package
- Puppet manifest: 1-install_a_package.pp
- Task: Use Puppet to install Flask version 2.1.0 from pip3.

### Execute a command
- Puppet manifest: 2-execute_a_command.pp
- Task: Create a manifest that kills a process named killmenow using exec Puppet resource and pkill.

## Author 👤:
[NEAZYIT](https://github.com/NEAZYIT)