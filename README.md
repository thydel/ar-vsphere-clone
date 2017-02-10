# ar-vsphere-clone

Ansible role to Clone a new VM via pysphere, then setup DHCPd and reconfigure VM id.

[gist-helper.mk]: https://gist.github.com/thydel/524e88147a65f3bff526a86aa5227621 "gist"
[init-play-dir.yml]: https://gist.github.com/thydel/f3cbc54b05ed5d6dbecb7e6f4c86a6cf "gist"
[ansible.mk]: https://gist.github.com/thydel/c5ba9cb9e4d3fb18d8452ca5ad9217df "gist"
[github-helper.mk]: https://gist.github.com/thydel/c951f099db05abf41f152e6b22e1432d "gist"
[infra-gitignore.txt]: https://gist.github.com/thydel/c4d36657a2a4abd4c93a31c1e02ef4b8 "gist"
[hg2git.yml]: https://github.com/thydel/misc-play/blob/master/hg2git.yml "github file"
[hg-git]: http://hg-git.github.io/ "hg-git.github.io"

## Import from mercurial

Create new github repos (see [gist-helper][gist-helper.mk] and
[github-helper][github-helper.mk])

```bash
github epi create/ar-vsphere-clone
github epi clone/ar-vsphere-clone
```

Then use [hg2git.yml][hg2git.yml] to setup the *old* mercurial repos
to use the *new* git repo via the [the Hg-Git mercurial plugin][hg-git]

```bash
hg2git.yml -e hg=~/usr/old/clone -e git=~/usr/ar-vsphere-clone -D
```

And use *mercurial* a last time to transfert history to *git*

```bash
hg --cwd ~/usr/old/clone push git
```

And use *git* from now on

```bash
git -C ~/usr/ar-vsphere-clone pull
```

## Look for how to specify gitub role dependencies

[What is the correct syntax of defining role dependencies in the meta/main.yml in Ansible?](http://serverfault.com/questions/803079/what-is-the-correct-syntax-of-defining-role-dependencies-in-the-meta-main-yml-in "serverfault")

