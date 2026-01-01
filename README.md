This repository is for learning purposes and is based on the RAP4MADS material:

[https://rap4mads.eu/](https://rap4mads.eu/06-packages.html)
5.2 Part 1: Creating an R Package with {usethis} and {devtools}


Now, anyone (including you on a different machine) can install your package with a single command (if you don’t use Nix):
现在，任何人（包括您在另一台机器上）都可以使用一条命令安装您的软件包（ 如果您不使用 Nix ）：
```
# You might need to install {remotes} first
# install.packages("remotes")
remotes::install_github("yourusername/cleanR")
```
If you want to create an environment using Nix that includes this package, use the git_pkgs argument of rix::rix() to generate the right default.nix file.
如果你想使用 Nix 创建一个包含此软件包的环境，请使用 rix::rix() 的 git_pkgs 参数生成正确的 default.nix 文件。

Congratulations, you have created and shared a fully functional R package!
