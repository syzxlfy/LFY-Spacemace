;;------------------------------------------------------------------------------------------
;; 文件名：~/.spacemacs
;; Time-stamp: <此文件由 syzxg 修改--最后修改时间为：2020年11月10日 20时08分26秒>
;;------------------------------------------------------------------------------------------

;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     git
     helm
     ;; lsp
     ;; markdown
     multiple-cursors
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     treemacs

     ;;以下为另外添加
     (chinese :variables
              chinese-default-input-method 'wubi
              chinese-enable-youdao-dict t )
     ;;tabnine ;;TabNine是一款基于GPT-2深度学习算法的代码补全工具，它支持23种编程语言，6种编辑器（Emacs, Vim, Visual Studio Code, Atom, IntelliJ IDEA, Sublime Text
               ;;  等），TabNine除了能在pop框中提示补全信息之外，还能给出各个候选词条的概率，效果十分惊艳。tabnine 为私有layer , 在private下。

     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '()

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.1)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("等距更纱黑体 Slab SC"  ;;"Source Code Pro"
                               :size 12.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers t ;;nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir  t ;;nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   ;; 持久化 Emacs 服务器
   ;; 我们可以持久化 Emacs 服务器，在 Emacs 关闭的时候，服务器不被杀掉。
   ;; 只要设置 ~/.spacemacs 中 dotspacemacs-persistent-server 为 t 即可
   ;; 但这种情况下，我们只可以通过以下方式来杀掉服务器了：
   ;; SPC q q 退出 Emacs 并杀掉服务器，会对已修改的 Buffer 给出保存的提示。
   ;; SPC q Q 同上，但会丢失所有未保存的修改。
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing ;;nil

   ;; If non nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfer with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

;;;;取消包管理密钥检查
  (setq package-check-signature nil)

;;;; 配置代理
  ;; 连接国外的软件源由于网络问题, 通常较慢. 可以在 dotspacemacs/user-init 中设置代理
  ;; proxy
  ;; (setq url-proxy-services '(("no_proxy" . "127.0.0.1")
  ;;                            ("http" . "127.0.0.1:1087")
  ;;                            ("https" . "127.0.0.1:1087")
  ;;                            ))

;;;;解决Spacemacs 启动速度特别慢问题
  ;; https://github.com/syl20bnr/spacemacs/issues/2705
  (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
;;;; 设定配置层压缩包网站，从哪个地方下载？
;;;; ELPA国外（最后）有些包国内装不上时，可以这个试试。特别是重新安装时要使用此。
  ;;(setq-default configuration-layer-elpa-archives
  ;;               '(("gnu" . "http://elpa.gnu.org/packages/")
  ;;                  ("org" . "http://orgmode.org/elpa/")
  ;;                 ("melpa" . "http://melpa.org/packages/")))
  ;;                  ("melpa-stable" . "http://stable.melpa.org/packages/")))

;;;;ELPA中国镜像（次选）  https://elpa.emacs-china.org/
  (setq-default configuration-layer-elpa-archives
                '(("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")
                  ("org-cn"   . "http://elpa.emacs-china.org/org/")
                  ("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
                  ("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/")))
  ;;                 ("SC" . "http://elpa.emacs-china.org/sunrise-commander/")
  ;;                 ("marmalade" . "http://elpa.emacs-china.org/marmalade/")
  ;;                 ("user42" . "http://elpa.emacs-china.org/user42/")))

;;;;ELPA清华镜像（首选）
  ;; (setq-default configuration-layer-elpa-archives
  ;;            '(("gnu-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
  ;;                ("org-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
  ;;                 ("melpa-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
  ;;                  ("marmalade" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")))

;;;; 1.设置程序启动时界面，显示菜单及工具栏及快捷键
  (menu-bar-mode t);;菜单菜单显示
  (tool-bar-mode t);;工具栏显示
  ;;F9(菜单栏显示切换) F10(激活菜单栏 使用方向键操作 子项) F9、F10系统默认
  ;;F11(窗口标题栏显示切换)、F12(工具栏显示切换)
  (global-set-key [f9] 'menu-bar-mode)  ;菜单栏显示切换
  (global-set-key [f12] 'tool-bar-mode) ;工具栏显示切换

;;;; 2.设置时间戳time-stamp标志，在文件头部显示文件更改后的保存时间
  ;;time-stamp在此文件头部设置时间标志，每次文件修改保存时，时间自动更新
  ;;设置时间戳time-stamp标志在文件开始的10行以内, check first 10 buffer lines for Time-stamp: <>
  (setq time-stamp-line-limit 10)
  (add-hook 'write-file-functions 'time-stamp)
  ;;(add-hook 'write-file-hooks 'time-stamp)
  ;;设置time-stamp格式
  ;;说明：
  ;;%:u，更新时用系统登录的用户名替换
  ;;%04y-%02m-%02d，更新时以“YYYY-MM-DD”的格式显示年月日
  ;;%02H:%02M:%02S，更新时以“HH:MM:SS”的格式显示时分秒
  (setq time-stamp-format
        "此文件由 %:u 修改--最后修改时间为：%Y年%02m月%02d日 %02H时%02M分%02S秒"
        time-stamp-active t
        time-stamp-warn-inactive t)

;;;; 3.保存时自动删除行尾空格及文件结尾空行
  ;; 与前面dotspacemacs-whitespace-cleanup 'trailing 设置重复
  ;;  (add-hook 'before-save-hook 'delete-trailing-whitespace)

;;;;使用ag搜索时，中文乱码,(还未解决)
  ;;(modify-coding-system-alist 'process "ag" '(utf-8 . chinese-gbk-dos)
  ;;(custom-set-variables '(helm-ag-base-command "ag --vimgrep --no-heading --smart-case"))
  ;; (defun my/helm-ag-gbk (&rest args)
  ;;   (set-terminal-coding-system nil)
  ;;   (set-keyboard-coding-system nil)
  ;;   (set-language-environment 'chinese-gbk)
  ;;   ;;(modify-coding-system-alist 'process "ag" '(utf-8 . chinese-gbk-dos))
  ;;   )
  ;;(advice-add 'helm-do-ag :before #'my/helm-ag-gbk)

  (add-to-list 'exec-path "d:/msys64/")
  ;;添加搜索工具ag.exe路径
  (add-to-list 'exec-path "d:/msys64/mingw64/bin")
  ;;(add-to-list 'exec-path "d:/Program Files/LLVM/bin/")

;;;; 4.逗号后自动加空格,
  (global-set-key (kbd ",")
                  #'(lambda ()
                      (interactive)
                      (insert ", ")))

;;;; 5. 插入当前(日期)-F7---------
  (defun insert-current-date ()
    "Insert the current date"
    (interactive "*")
    (insert (format-time-string "%Y/%m/%d" (current-time))))
  (global-set-key (kbd "<f7>") 'insert-current-date)


;;;; 6. 插入当前(时间)-F8---------
  ;; (defun insert-current-time ()
  ;;   "Insert the current time"
  ;;   (interactive "*")
  ;;   (insert (format-time-string "%H:%M:%S" (current-time))))
  ;; (global-set-key (kbd "<f8>") 'insert-current-time)

;;;; 7. 插入当前(日期+时间)-F6---------
  (defun insert-current-time ()
    "Insert the current time"
    (interactive "*")
    (insert (format-time-string "%Y/%m/%d %H:%M:%S" (current-time))))
  (global-set-key (kbd "<f6>") 'insert-current-time)

;;;; 8. 解决进入eshell后，运行编译后C++程序时中文乱码问题。
  (with-eval-after-load 'eshell
    (set-language-environment "chinese-GB")
    )
;;;; 9. 保存时自动删除行尾空格及文件结尾空行
  (add-hook 'before-save-hook 'delete-trailing-whitespace)

  ;; 10. 使用aspell代替ispell进行英文拼写检查（Aspell使用mysys中的）
  (add-to-list 'exec-path "d:/msys64/usr/bin/")
  (setq ispell-program-name "aspell")
  (setq-default ispell-program-name "aspell")
  ;; use American English as ispell default dictionary
  (ispell-change-dictionary "american" t)
  ;;;; Emacs 文本显示设置 去掉换行的箭头(屏幕上显示的)
  (global-visual-line-mode t)

  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  ;;(require 'unicad)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."


  ;;==========================================================================================
;;;; C-C++自动补全
  ;;==========================================================================================
  (add-hook 'c++-mode-hook
            (lambda ()
              (setq company-backends '(company-yasnippet))))
;;;; 智能编译C-C++等程序
  (add-to-list 'load-path "~/.emacs.d/addons/smart-compile")
  (require 'smart-compile)
  (global-set-key [f8] 'smart-compile)

;;;; 解决搜索工具rg、pt 中文乱码问题, 推荐使用rg, 快捷方式spc s r
  (modify-coding-system-alist 'process "rg" '(utf-8 . chinese-gbk-dos))
  (modify-coding-system-alist 'process "pt" '(utf-8 . chinese-gbk-dos))

;;;; org-mode 配置重要提示
  ;; spacemacs 使用 org ELPA 仓库中的版本, 而不是 emacs 自带的 org.
  ;; 所有与 org-mode 相关的配置都需要放在 with-eval-after-load 代码块中 , 否则会载 入 emacs 自带的 org 版本,
  ;; 造成版本冲突从而引起各种奇怪的 org-mode 相关的报错.
  ;; 形式如下：
  ;; (with-eval-after-load 'org
  ;;   ;; here goes your Org config :)
  ;;   ;; ....
  ;;   )
  (with-eval-after-load 'org

    ;;;; 在 org-mode 中运行程序代码，就涉及到 Babel;如插入C++程序
    ;; #+begin_src C++ :includes <stdio.h>
    ;;   int a=1;
    ;;   int b=1;
    ;;   int c=3;
    ;;   printf("%d\n", a+b+c);
    ;; #+end_s fsrc
    ;; 需要先在 init file 中加入如下设置
    ;; 在org输入好代码后，光标移动到 SRC block 中，使用 C-c C-c 运行代码。
    (org-babel-do-load-languages
     'org-babel-load-languages
     '((emacs-lisp . t)
       (C . t)
       ;;(java . t)
       ;;(js . t)
       ;;(ruby . t)
       ;;(ditaa . t)
       (python . t)
       (shell . t)
       ;;(latex . t)
       ;;(plantuml . t)
       (R . t)))


    ;;======================================================================================================
    ;; ORG-GTD 时间、事件、计划管理
    ;;======================================================================================================
    ;; 设置Agenda工作目录及相应的记录文件位置
    (defvar org-agenda-dir "" "gtd org files location")
    (setq-default org-agenda-dir "~/org-notes")
    (setq org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir))
    (setq org-agenda-file-gtd (expand-file-name "gtd.org" org-agenda-dir))
    (setq org-agenda-file-journal (expand-file-name "journal.org" org-agenda-dir))
    (setq org-agenda-file-code-snippet (expand-file-name "snippet.org" org-agenda-dir))
    (setq org-default-notes-file (expand-file-name "gtd.org" org-agenda-dir))
    (setq org-agenda-file-finished (expand-file-name "finished.org" org-agenda-dir))
    (setq org-agenda-file-canceled (expand-file-name "canceled.org" org-agenda-dir))
    (setq org-agenda-files (list org-agenda-dir))

    ;; 设置文件模板 ORG-Capture-templates
    (setq org-capture-templates
          '(("t" "Todo----------------计划" entry (file+headline org-agenda-file-gtd "Workspace")
             "* TODO [#B] %?\n  %i\n"
             :empty-lines 1)
            ("n" "Notes---------------笔记" entry (file+headline org-agenda-file-note "Quick notes")
             "* %?\n  %i\n %U"
             :empty-lines 1)
            ("b" "Blog Ideas----------博客" entry (file+headline org-agenda-file-note "Blog Ideas")
             "* TODO [#B] %?\n  %i\n %U"
             :empty-lines 1)
            ("s" "Code Snippet--------源码" entry (file org-agenda-file-code-snippet)
             "* %?\t%^g\n#+BEGIN_SRC %^{language}\n\n#+END_SRC")
            ("w" "Work----------------工作" entry (file+headline org-agenda-file-gtd "Cocos2D-X")
             "* TODO [#A] %?\n  %i\n %U"
             :empty-lines 1)
            ;; ("c" "Chrome--------------网页" entry (file+headline org-agenda-file-note "Quick notes")
            ;;  "* TODO [#C] %?\n %(my/insert-chrome-current-tab-url)\n %i\n %U"
            ;;  :empty-lines 1)
            ("l" "Links---------------链接" entry (file+headline org-agenda-file-note "Quick notes")
             "* TODO [#C] %?\n  %i\n %a \n %U"
             :empty-lines 1)
            ("j" "Journal Entry-------日记"
             entry (file+datetree+prompt org-agenda-file-journal)
             "* %?\n"
             ;;"* %U - %^{heading} %^g\n %?\n"
             :empty-lines 0)))

    ;; 设置TODO关键词
    (setq org-todo-keywords
          '(;;(type "工作(w!)" "学习(s!)" "生活(l!)" "|")
            (sequence "TODO(t!)" "PENDING(p!)"  "ABORT(a@/!)" "DONE(d!)" "|")
            ))

    ;; 标签tag设置
    ;; Use org's tag feature to implement contexts.
    (setq org-tag-alist '(("工作" . ?w)          ;;("Work" . ?w)        ;; company studio office        单位工作
                          ("项目" . ?p)          ;;("Project" . ?p)     ;; difference task at company   工程项目
                          ("家中" . ?h)          ;;("Home" . ?h)        ;; home                         家中事务
                          ;;("Mail" . ?m)        ;; mail somebody 电子邮件
                          ;;("Lunchtime" . ?l)   ;; breakfast lunchtime dinner onway etc. (rest)零碎时间
                          ;;("Tourism" . ?t)     ;; tourism or not at home/company and any wher休闲度假
                          ("电脑" . ?c)          ;;("Computer" . ?c)    ;; 计算机
                          ("生活" . ?f)          ;;("Life" . ?f)        ;; 生活点滴
                          ("阅读" . ?r)          ;;("Reading" . ?r)     ;; reading 阅读
                          ))

    ;; 设置 Agenda-view
    ;; Custom agenda view (three parts):
    ;; 1.High-priority(A) unfinished tasks
    ;; 2.Normal agenda view
    ;; 3.All normal priority tasks

    ;; 设置Agenda View 增加以下自定义配置
    (setq org-agenda-custom-commands
          '(
            ("c" "Simple agenda view"
             ((tags "PRIORITY=\"A\""
                    ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                     (org-agenda-overriding-header "
================================================================
 (1）High-priority unfinished tasks(紧急且未完成任务)
================================================================")))
              (agenda "")
              (alltodo ""
                       ((org-agenda-skip-function
                         '(or (air-org-skip-subtree-if-habit)
                              (air-org-skip-subtree-if-priority ?A)
                              (org-agenda-skip-if nil '(scheduled deadline))))
                        (org-agenda-overriding-header "
\n================================================================
（2）ALL normal priority tasks(一般任务)
================================================================"))))
             ((org-agenda-compact-blocks t)))
            ("w" . "任务安排View")
            ("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
            ("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
            ("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
            ("b" "Blog" tags-todo "BLOG")
            ("p" . "项目安排View")
            ("pw" tags-todo "PROJECT+WORK+CATEGORY=\"Program\"")
            ("pl" tags-todo "PROJECT+DREAM+CATEGORY=\"XZLFY\"")
            ("W" "Weekly Review"
             ((stuck "") ;; review stuck projects as designated by org-stuck-projects
              (tags-todo "PROJECT") ;; review all projects (assuming you use todo keywords to designate projects)
              ))))
    ;; 有关AgendaView的定义函数
    (defvar org-lowest-priority)
    (defun air-org-skip-subtree-if-priority (priority)
      "Skip an agenda subtree if it has a priority of PRIORITY.
   PRIORITY may be one of the characters ?A, ?B, or ?C."
      (let ((subtree-end (save-excursion (org-end-of-subtree t)))
            (pri-value (* 1000 (- org-lowest-priority priority)))
            (pri-current (org-get-priority (thing-at-point 'line t))))
        (if (= pri-value pri-current)
            subtree-end
          nil)))

    (defun air-org-skip-subtree-if-habit ()
      "Skip an agenda entry if it has a STYLE property equal to \"habit\"."
      (let ((subtree-end (save-excursion (org-end-of-subtree t))))
        (if (string= (org-entry-get nil "STYLE") "habit")
            subtree-end
          nil)))


  ;;;; ORG番茄工作时间
    (defvar org-agenda-mode-map)
    (with-eval-after-load 'org-agenda
      (define-key org-agenda-mode-map (kbd "P") 'org-pomodoro)
      (spacemacs/set-leader-keys-for-major-mode 'org-agenda-mode
        "." 'spacemacs/org-agenda-transient-state/body)
      )

;;;; Refile settings
    ;; ;; 定义转接
    (define-key global-map "\C-cr" 'org-refile)
    (setq org-agenda-files (list "~/org-notes/canceled.org"
                                 "~/org-notes/finished.org"
                                 "~/org-notes/gtd.org"
                                 "~/org-notes/journal.org"
                                 "~/org-notes/notes.org"
                                 "~/org-notes/snippet.org"
                                 ))
    ;; Targets include this file and any file contributing to the agenda - up to 9 levels deep
    ;;可以在nil位置增加需要转换的其它文件，如：sy.org等（~/sy.org :maxlevel . 1)
    (setq org-refile-targets (quote ((org-agenda-files :maxlevel . 1)
                                     ;;(nil :maxlevel . 1)
                                     )))
    (use-package org-bullets
      :hook (org-mode . org-bullets-mode)
      :init
      (setq org-bullets-bullet-list '("✡" "✽" "✲" "✱" "✻" "✼" "✽" "✾" "✿" "❀" "❁" "❂" "❃" "❄" "❅" "❆" "❇")))

  ;;;; 打开自已的GTD文件
  ;;;; I open my gtd file when I hit C-c g ;;
    (defvar org-gtd-file (concat  "~/org-notes/gtd.org"))
    (defun gtd ()
      "Open the GTD file."
      (interactive)
      (find-file org-gtd-file))
    (global-set-key (kbd "C-c g")  'gtd)

  ;;;; 设置org文件打开后标题的显示方式：‘overview’, ‘content’, or ‘showall’(一级标题、二级标题、全部)
    (defvar org-startup-folded '(showall))

  ;;;;设置org-agenda-time-grid
    (setq org-agenda-time-grid (quote ((daily today require-timed)
                                       (300 600 900 1200 1500 1800 2100 2400)
                                       "......" "----------------")))
    )


  ;;-----------------------------------------------------------------------------------------------------------
  ;;;;===============友道字典（C-c y)==========================================================================
  (use-package youdao-dictionary
    :defer t
    :bind ("C-c y" . 'youdao-dictionary-search-at-point)
    :config
    ;; Enable Cache
    (setq url-automatic-caching t)
    ;; Set file path for saving search history
    (setq youdao-dictionary-search-history-file "~/.emacs.d/.youdao")
    ;; Enable Chinese word segmentation support
    (setq youdao-dictionary-use-chinese-word-segmentation t))
  ;; Usage:用法
  ;;'youdao-dictionary-search-at-point
  ;; Search word at point and display result with buffer
  ;;'youdao-dictionary-search-at-point+
  ;; Search word at point and display result with popup-tip
  ;;'youdao-dictionary-search-from-input
  ;; Search word from input and display result with buffer
  ;; 'youdao-dictionary-search-and-replace
  ;; Search word at point and display result with popup-menu, replace word with selected translation.
  ;; 'youdao-dictionary-play-voice-at-point
  ;; Play voice of word at point (by @snyh)
  ;; ‘youdao-dictionary-play-voice-from-input
  ;; Play voice of word from input (by @snyh)
  ;;;;============================================================================================================
  ;;-------------------中文日历-----------------------------------------------------------------------------------
  (add-to-list 'load-path "~/.emacs.d/addons/cal-china-x-master")
  (require 'cal-china-x)
  ;;-------------------ORG-MODE表格对齐--------------------------------------------------------------------------
  (add-to-list 'load-path "~/.emacs.d/addons/valign-master")
  (require 'valign)


  ;;---------------------------------Common Lisp设置-------------------------------------------------------------
  ;; Common Lisp 设置，使用M-x slime
  (setq inferior-lisp-program "d:/Lisp/1.4.2/sbcl.exe");设置优先使用哪种Common Lisp实现
  (add-to-list 'load-path "d:/Lisp/slime-master/");设置Slime路径
  (require 'slime)
  (setq slime-net-coding-system 'utf-8-unix)
  (slime-setup)
  (require 'slime-autoloads)
  (slime-setup '(slime-fancy slime-scratch slime-editing-commands));让slime变得更好看，比如把sbcl的*变成CL-USER>
  ;; 设置为中文简体语言环境括号高亮配对
  (set-language-environment 'Chinese-GB)
  (global-font-lock-mode t)
  (show-paren-mode t)
  (font-lock-add-keywords 'lisp-mode '("[(]" "[)]"))
  (font-lock-add-keywords 'emacs-lisp-mode '("[(]" "[)]"))
  (font-lock-add-keywords 'lisp-interaction-mode '("[(]" "[)]"))
  (font-lock-add-keywords 'repl-mode '("[(]" "[)]"))
  (global-set-key (kbd "C-c s") 'slime-selector)
  (global-set-key (kbd "C-c C-]") 'slime-close-all-parens-in-sexp)
  ;; ----------------------------------------------------------------------------------------------------------------
  ;;;; 使 isearch 工作得像在浏览器里搜索一样: 在浏览器里，我们只需要按C-f，然后敲入所要搜索的字符串。之后只要按回车
  ;;;; 就可以不 断地向下搜索。如果我们需要向上搜索，那么需要点击一下向上的箭头。现在我们在isearch里模拟这种情况，还
  ;;;; 是使用C-s来调用isearch。但是之后的 repeat操作是交给了回车。

  (use-package isearch
    :ensure nil
    :bind (:map isearch-mode-map
                ([return] . my/isearch-repeat)
                ([escape] . isearch-exit))
    :config
    (defvar my/isearch--direction nil)
    (define-advice isearch-exit (:after nil)
      (setq-local my/isearch--direction nil))
    (define-advice isearch-repeat-forward (:after (_))
      (setq-local my/isearch--direction 'forward))
    (define-advice isearch-repeat-backward (:after (_))
      (setq-local my/isearch--direction 'backward))
    )
  ;; 在使用isearch时在状态栏上显示如 10/100 这种状态,表示找到的当前数/总数
  (setq isearch-lazy-count t
        lazy-count-prefix-format "%s/%s ")

  (defun my/isearch-repeat (&optional arg)
    (interactive "P")
    (isearch-repeat my/isearch--direction arg))
  (define-advice isearch-exit (:after nil)
    (setq-local my/isearch--direction nil))

 ;;;; 设置org标题1-8级的字体大小和颜色，颜色摘抄自monokai。;希望org-mode标题的字体大小和正文一致，
 ;;;;设成1.0， 如果希望标题字体大一点可以设成1.2

  ;; (custom-set-faces
  ;;  '(org-level-1 ((t (:inherit outline-1 :height 1.2  :foreground "#FD971F"))))
  ;;  '(org-level-2 ((t (:inherit outline-2 :height 1.2  :foreground "#A6E22E"))))
  ;;  '(org-level-3 ((t (:inherit outline-3 :height 1.2  :foreground "#66D9EF"))))
  ;;  '(org-level-4 ((t (:inherit outline-4 :height 1.2  :foreground "#E6DB74"))))
  ;;  '(org-level-5 ((t (:inherit outline-5 :height 1.2  :foreground "#A1EFE4"))))
  ;;  '(org-level-6 ((t (:inherit outline-6 :height 1.2  :foreground "#A6E22E"))))
  ;;  '(org-level-7 ((t (:inherit outline-7 :height 1.2  :foreground "#F92672"))))
  ;;  '(org-level-8 ((t (:inherit outline-8 :height 1.2  :foreground "#66D9EF"))))

  ;;  ) ;; end custom-set-faces
  ;; -----------------------------------------------------------------------------------------------------------------

  ;; EAF
  ;; (use-package eaf
  ;;   :load-path "~/.emacs.d/addons/EAF/" ; Set to "/usr/share/emacs/site-lisp/eaf" if installed from AUR
  ;;   :custom
  ;;   (eaf-find-alternate-file-in-dired t)
  ;;   :config
  ;;   (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  ;;   (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  ;;   (eaf-bind-key take_photo "p" eaf-camera-keybinding))

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(package-selected-packages
     '(org-grep org-noter-pdftools saveplace-pdf-view org-pdftools pdf-view-restore pdfgrep pdf-tools youdao-dictionary yasnippet-snippets ws-butler writeroom-mode winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package unfill treemacs-projectile treemacs-persp treemacs-evil toc-org symon symbol-overlay string-inflection spaceline-all-the-icons restart-emacs request rainbow-delimiters popwin pcre2el password-generator paradox pangu-spacing overseer org-projectile org-present org-pomodoro org-mime org-download org-cliplink org-bullets org-brain open-junk-file nameless mwim move-text macrostep lorem-ipsum link-hint indent-guide hybrid-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-ls-git helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot fuzzy font-lock+ flycheck-package flycheck-elsa flx-ido find-by-pinyin-dired fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu elisp-slime-nav editorconfig dumb-jump dotenv-mode diminish devdocs define-word column-enforce-mode clean-aindent-mode chinese-wbim chinese-conv centered-cursor-mode auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent ace-pinyin ace-link ace-jump-helm-line ac-ispell)))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   )
  )
;;
