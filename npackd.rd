C:\Program Files (x86)\NpackdCL>ncl.exe
ncl 1.25 - command line interface for the Npackd software package manager
Usage: ncl <command> [global options] [options]

Available commands in alphabetical order:
    ncl add (--package <package>
            [--version <version> | --versions <versions>])+
            [--file <installation directory>]
            [--user <user name>] [--password <password>]
            [--proxy-user <proxy user name>] [--proxy-password <proxy password>]
        installs packages. The newest available version will be
        installed, if none is specified.
    ncl add-repo --url <repository>
        appends a repository to the system-wide list of package sources
    ncl build --package <package> [--version <version> | --versions <versions>])
            --output-package <package>
        build a package from another one (e.g. a binary from source code)
    ncl check
        checks the installed packages for missing dependencies
    ncl detect [--user <user name>] [--password <password>]
            [--proxy-user <proxy user name>] [--proxy-password <proxy password>]
        download repositories and detect packages from the MSI
        database and software control panel
    ncl info --package <package> [--version <version>]
            [--bare-format | --json]
        shows information about the specified package or package version
    ncl install-dir [--bare-format | --json]
        prints the directory where packages will be installed
    ncl list [--bare-format | --json]
        lists package versions sorted by package name and version.
    ncl list-repos [--bare-format | --json]
        prints the system-wide list of package sources (repositories)
    ncl help
        prints this help
    ncl path (--package <package>
            [--version <version> | --versions <versions>])+
            [--cmd | --json]
        searches for installed packages and prints their locations
    ncl place --package <package>
            --version <version> --file <directory>
            [--bare-format | --json]
        registers a package version installed without Npackd
    ncl remove|rm (--package <package> [--version <version>])+
           [--end-process <types>]
        removes packages. The version number may be omitted,
        if only one is installed.
    ncl remove-scp --title <title>
        remove a program for the Software Control Panel by title
    ncl remove-repo --url <repository>
        removes a repository from the system-wide list of package sources
    ncl set-repo (--url <repository>)+
        changes the system-wide list of package sources (repositories)
    ncl search [--query <search terms>]
            [--status installed | updateable | all]
            [--bare-format | --json]
        full text search. Lists found packages sorted by package name.
        All packages are shown by default.
    ncl set-install-dir [--file <directory>]
        changes the directory where packages will be installed. The
        default directory for program files is used if the --file
        parameter is missing.
    ncl update (--package <package> [--versions <versions>])+
            [--end-process <types>]
            [--install] [--keep-directories]
            [--file <installation directory>]
            [--user <user name>] [--password <password>]
            [--proxy-user <proxy user name>] [--proxy-password <proxy password>]
        updates packages by uninstalling the currently installed
        and installing the newest version.
    ncl where --file <relative path> [--bare-format | --json]
        finds all installed packages with the specified file or directory
    ncl which --file <file> [--bare-format | --json]
        finds the package that owns the specified file or directory
Global options:
    -d, --debug               turn on the debug output
    -l, --local               install packages for the current user instead of system-wide
    -n, --non-interactive     assume that there is no user and do not ask for input
Options:
    -b, --bare-format         bare format (no heading or summary)
    -c, --cmd                 output a .cmd script
    -e, --end-process         list of ways to close running applications
(c=close, k=kill, s=disconnect from file shares, d=stop services, t=send Ctrl+C). The default value is 'c'.
    -f, --file                file or directory
    -i, --install             install a package if it was not installed
    -j, --json                json format for the output
    -k, --keep-directories    use the same directories for updated packages
    -p, --package             internal package name (e.g. com.example.Editor or just Editor)
    -q, --query               search terms (e.g. editor)
    -r, --versions            versions range (e.g. [1.5,2))
    -s, --status              filters packages by status
    -t, --timeout             timeout in seconds
    -u, --url                 repository URL (e.g. https://www.example.com/Rep.xml)
    -v, --version             version number (e.g. 1.5.12)
        --user                user name for the HTTP authentication
        --password            password for the HTTP authentication
        --proxy-user          user name for the HTTP proxy authentication
        --proxy-password      password for the HTTP proxy authentication
        --title               package title or a regular expression in JavaScript syntax. Example: /PDF/i
        --output-package      internal package name (e.g. com.example.Editor or just Editor)
