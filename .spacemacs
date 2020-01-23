;;
;;==========================================================================================
;; 文件名：.Spacemacs
;; Time-stamp: <此文件由 DELL790-LFY 修改--最后修改时间为：2020年01月23日 10时29分04秒>
;;==========================================================================================
;;
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

   ;; If non-nil layers with lazy install support are lazy installed.
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
     helm
     auto-completion
     better-defaults
     emacs-lisp
     git
     ;;markdown
     neotree
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        ;;shell-default-shell 'eshell
     ;;        shell-default-position 'bottom)
     spell-checking
     syntax-checking
     ;; version-control
     ;;gtd
     html

     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   ;; 安装另外的包（不在层中的）
   dotspacemacs-additional-packages '(
                                      youdao-dictionary
                                      ;;editorconfig
                                      ;;org-download
                                      )

   ;; A list of packages that cannot be updated.
   ;; 列表中的包不被更新
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   ;; 列表中的包将不会安装和加载
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   ;; 当安装包时，定义Spacemacs的行为。
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

   ;; File path pointing to emacs 27.1 executable compiled with support
   ;; for the portable dumper (this is currently the branch pdumper).
   ;; (default "emacs-27.0.50")
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"

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
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

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

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

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
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.2)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; 字体："等距更纱黑体 Slab SC" "Source Code Pro" "YaHei Consolas Hybrid"
   dotspacemacs-default-font '("等距更纱黑体 Slab SC"
                               :size 15
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
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

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
   dotspacemacs-maximized-at-startup t ;;nil

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
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t ;;nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
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
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
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
   dotspacemacs-frame-title-format "%I@%S@%b"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

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
  ;;解决Spacemacs 启动速度特别慢问题
  ;; https://github.com/syl20bnr/spacemacs/issues/2705
  (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

  ;; 设定配置层压缩包网站，从哪个地方下载
  ;;ELPA中国镜像https://elpa.emacs-china.org/
  (setq-default configuration-layer-elpa-archives
                '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
                  ("org-cn"   . "http://elpa.emacs-china.org/org/")
                  ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")
                  ("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/")
                  ("melpa-stable" . "http://stable.melpa.org/packages/")
                  ("SC" . "http://elpa.emacs-china.org/sunrise-commander/")
                  ("marmalade" . "http://elpa.emacs-china.org/marmalade/")
                  ("user42" . "http://elpa.emacs-china.org/user42/")))
  ;;ELPA镜像
  ;;(setq-default configuration-layer-elpa-archives
  ;;              '(("gnu" . "http://elpa.gnu.org/packages/")
  ;;                 ("org" . "http://orgmode.org/elpa/")
  ;;                 ("melpa" . "http://melpa.org/packages/")
  ;;                 ("melpa-stable" . "http://stable.melpa.org/packages/")))
  ;;ELPA清华镜像
  ;; (setq-default configuration-layer-elpa-archives
  ;;              '(("melpa-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
  ;;                 ("gnu-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
  ;;                 ("org-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

  ;; 设置程序启动时界面，显示菜单及工具栏
  (menu-bar-mode t);;菜单菜单显示
  (tool-bar-mode t);;工具栏显示

  ;; 使用aspell代替ispell进行英文拼写检查（Aspell使用mysys中的）
  (add-to-list 'exec-path "d:/msys64/usr/bin/")
  (setq ispell-program-name "aspell")
  (setq-default ispell-program-name "aspell")
  ;; use American English as ispell default dictionary
  (ispell-change-dictionary "american" t)
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  ;; 自己的配置
  ;; Drag-and-drop to `dired`
 ;; (add-hook 'dired-mode-hook 'org-download-enable)


  ;;2017年8月3日
  ;;在 spacemacs 启动时显示当前路径的文件夹视图，需要修改 .spacemacs 配置文件中的 dotspacemacs/user-config 函数。
  ;;以下即为加入的内容（neotree-show)
  ;; (neotree-show);;前面已有启用
  (global-set-key [f9] 'neotree-toggle)

  ;; 保存时自动删除行尾空格及文件结尾空行
  (add-hook 'before-save-hook 'delete-trailing-whitespace)

  ;;时间设置
  ;; 启用时间显示设置，在minibuffer上面的那个杠上
  (display-time-mode t)
  ;; 使用24小时制
  (setq display-time-24hr-format t)

  ;; editorconfig 是在项目存储库中有一个名为 .editorconfig 的文件，这样参与的开发者的编辑和 ide 可以自动调整。
  ;; 有一个 emacs/spacemacs 模式，可以很容易地在以下步骤中进行集成：
  ;; 1）将 editorconfig 添加到 dotspacemacs-additional-packages。
  ;; 2）将（editorconfig-mode 1）添加到 dotspacemacs/user-config。
  ;;(editorconfig-mode t)


  ;;逗号后自动加空格
  (global-set-key (kbd ",")
                  #'(lambda ()
                      (interactive)
                      (insert ", ")))

  ;; 设置屏幕显示区(文字)自动动换行
  (add-hook 'hack-local-variables-hook (lambda () (setq truncate-lines nil)))

  ;; Emacs 文本显示设置 去掉换行的箭头(屏幕上显示的)
  (global-visual-line-mode t)

  ;; 设置时间戳time-stamp
  ;;time-stamp在此文件头部设置时间标志，每次文件修改保存时，时间自动更新
  (setq time-stamp-line-limit 10) ; check first 10 buffer lines for Time-stamp: <>
  (add-hook 'write-file-hooks 'time-stamp)
  ;;设置time-stamp格式
  ;;说明：
  ;;%:u，更新时用系统登录的用户名替换
  ;;%04y-%02m-%02d，更新时以“YYYY-MM-DD”的格式显示年月日
  ;;%02H:%02M:%02S，更新时以“HH:MM:SS”的格式显示时分秒
  (setq time-stamp-format
        "此文件由 %:u 修改--最后修改时间为：%04y年%02m月%02d日 %02H时%02M分%02S秒"
        time-stamp-active t
        time-stamp-warn-inactive t)


  ;; 设置友道翻译(2020年1月9日)，（使用时将光标放在需翻译的词（english)或汉语句开头位置，然后按快捷键C-c y, 会在回显栏显示结果。）
  (defvar base-youdao-url "http://fanyi.youdao.com/openapi.do?keyfrom=emacs-yd-pub&key=527593631&type=data&doctype=json&version=1.1&q=")
  ;; Get yourself an API KEY here: http://fanyi.youdao.com/openapi?path=data-mode
  (defun youdao-fanyi ()
    "Translate current word (en->cn, cn->en), prompt to input if no word here"
    (interactive)
    (let* ((word (or (thing-at-point 'word) (read-string "Translate> ")))
           (full-url (concat base-youdao-url word)))
      (with-current-buffer (url-retrieve-synchronously full-url)
        (unwind-protect
            (progn
              (goto-char (point-min))
              (re-search-forward "^$")
              (delete-region (point) (point-min)) ;strip headers
              (message
               (elt (cdar ;we just want the straight one
                     (json-read-from-string
                      (decode-coding-string
                       (buffer-string) 'utf-8)))
                    0)))
          (kill-buffer)))))
  (global-set-key "\C-c\ y" 'youdao-fanyi)

  ;;
  ;;友道词典配置:
  ;;注意：只有把youdao-dictionary 放到 additional()里:
  ;; dotspacemacs-additional-packages '(youdao-dictionary)，在前面的配置中已加入。
  ;; 并将快捷键放在dotspacemacs/user-config ()里，才能正常使用。
  ;;在 Spacemacs 中安装 package 时最好不要使用 package-install, 因为这样安装的 package 会在下一次启动时被删除.若要使用还要再次安装。
  ;;Install youdao-dictionary from MELPA with:（手动安装youdao-dictionary）
  ;;M-x package-install RET youdao-dictionary RET
  ;;此处未使用这种方法
  ;; Enable Cache
  (setq url-automatic-caching t)
  ;;Key binding
  (global-set-key (kbd "C-M-y") 'youdao-dictionary-search-at-point)
  ;; Integrate with popwin-el (https://github.com/m2ym/popwin-el)
  ;;(push "*Youdao Dictionary*" popwin:special-display-config)
  ;; Set file path for saving search history
  ;; (setq youdao-dictionary-search-history-file "~/.emacs.d/.youdao")
  ;; Enable Chinese word segmentation support (支持中文分词)
  (setq youdao-dictionary-use-chinese-word-segmentation t)
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

  ;;日历设置（含中国农历）
  (add-to-list 'load-path "~/.emacs.d/addons/cal-china-x-master")
  (require 'cal-china-x)
  ;; (setq mark-holidays-in-calendar t) ;;在显示日历时标出节假日(好像不起作用)

  ;;打开自已的GTD文件
  ;; I open my gtd file when I hit C-c g ;;
  (defvar org-gtd-file (concat  "~/org-notes/gtd.org"))
  (defun gtd ()
    "Open the GTD file."
    (interactive)
    (find-file org-gtd-file))
  (global-set-key (kbd "C-c g")  'gtd)

  ;; org-mode的GTD
  ;; GTD，getting thing done。时间管理的方法。
  ;; org-mode的GTD，传说很强大，可以随时记录任务。需要了解的有：
  ;; 1. org-capture；随时记录一个任务。采用下文的配置，可以任务组分类。
  ;; org-capture是临时加入一个任务。所有的任务查看，是利用org-agenda命令。
  ;; 2. 任务，可以设置
  ;; - TODO/DONE属性
  ;; - 优先级A B C（方便分类查找）
  ;; - tag标签（方便分类查找）
  ;; - schedule 计划日期
  ;; - deadline 截止期限，最后期限

  ;;GTD简单描述：
  ;; 1. 所有org-capture的目录都在~/org-notes里；分为
  ;; - notes.org
  ;; - gtd.org
  ;; - journal.org
  ;; - snippet.org
  ;; 2. org-capture快捷键是c-c c ；执行后，显示命令：
  ;; 3. 第2步骤的命令，按c-c c-c之后完成，并保存在~/org-notes目录下的相应文件里。
  ;; 4. c-c a 查看org-agenda；多了 w 任务安排 等。方便查看任务分类。

  ;;Org-GTD

  ;; "Configuration function for user code.
  ;; This function is called at the very end of Spacemacs initialization after
  ;; layers configuration.
  ;; This is the place where most of your configurations should be done. Unless it is
  ;; explicitly specified that a variable should be set before a package is loaded,
  ;; you should place your code here."

  (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
  ;; define the refile targets
  (defvar org-agenda-dir "" "gtd org files location")
  (setq-default org-agenda-dir "~/org-notes")
  (setq org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir))
  (setq org-agenda-file-gtd (expand-file-name "gtd.org" org-agenda-dir))
  (setq org-agenda-file-journal (expand-file-name "journal.org" org-agenda-dir))
  (setq org-agenda-file-code-snippet (expand-file-name "snippet.org" org-agenda-dir))
  (setq org-default-notes-file (expand-file-name "gtd.org" org-agenda-dir))
  (setq org-agenda-files (list org-agenda-dir))

  (with-eval-after-load 'org-agenda
    (define-key org-agenda-mode-map (kbd "P") 'org-pomodoro)
    (spacemacs/set-leader-keys-for-major-mode 'org-agenda-mode
      "." 'spacemacs/org-agenda-transient-state/body)
    )

  ;; the %i would copy the selected text into the template
  ;;http://www.howardism.org/Technical/Emacs/journaling-org.html
  ;;add multi-file journal
  ;; ORG文件模板
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
           entry (file+datetree org-agenda-file-journal)
           "* %?"
           :empty-lines 1)))


  ;; I use org's tag feature to implement contexts.
  ;; 标签tag设置
  (setq org-tag-alist '(("Work" . ?w)        ;; company studio office        单位工作
                        ("Project" . ?p)     ;; difference task at company   单位项目
                        ("Home" . ?h)        ;; home                         家中事务
                        ("Mail" . ?m)        ;; mail somebody                电子邮件
                        ("Lunchtime" . ?l)   ;; breakfast lunchtime dinner onway etc. (rest)
                        ("Tourism" . ?t)     ;; tourism or not at home/company and any where
                        ("Computer" . ?c)    ;; 计算机
                        ("Life" . ?f)        ;; 生活点滴
                        ("Reading" . ?r)))   ;; reading 阅读

  ;;自定义agenda-view
  ;; Custom agenda view (three parts):
  ;; 1.High-priority(A) unfinished tasks
  ;; 2.Normal agenda view
  ;; 3.All normal priority tasks
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

  (setq org-agenda-custom-commands
        '(
          ("c" "Simple agenda view"
           ((tags "PRIORITY=\"A\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "High-priority unfinished tasks(最急任务):")))
            (agenda "")
            (alltodo ""
                     ((org-agenda-skip-function
                       '(or (air-org-skip-subtree-if-priority ?A)
                            (org-agenda-skip-if nil '(scheduled deadline))))))))

          ("w" . "任务安排")
          ("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
          ("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
          ("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
          ("b" "Blog" tags-todo "BLOG")
          ("p" . "项目安排")
          ("pw" tags-todo "PROJECT+WORK+CATEGORY=\"cocos2d-x\"")
          ("pl" tags-todo "PROJECT+DREAM+CATEGORY=\"zilongshanren\"")
          ("W" "Weekly Review"
           ((stuck "") ;; review stuck projects as designated by org-stuck-projects
            (tags-todo "PROJECT") ;; review all projects (assuming you use todo keywords to designate projects)
            ))))

  ;; ;;有一种常见的场景为在浏览网页时看到一篇文章一时看不完，要把它记下来之后再看，这个时候需要复制链接，再粘贴到Emacs中，这个过程比较烦人，
  ;;牛人子龙山人为此提供了如下的配置，通过AppleScript，再增加一个相应的Template，可以使新增该Template的任务时自动去Chrome抓取url并粘贴
  ;;在Emacs中，可以说是非常神奇了。
  ;;此项在Windows上未调试成功，错误为 do-applescript 是一个空函数。（原因为applescript是苹果系统上的脚本语言程序）
  ;; (defun my/insert-chrome-current-tab-url()
  ;;   "Get the URL of the active tab of the first window"
  ;;   (interactive)
  ;;   (insert (my/retrieve-chrome-current-tab-url)))

  ;; (defun my/retrieve-chrome-current-tab-url()
  ;;   "Get the URL of the active tab of the first window"
  ;;   (interactive)
  ;;   (let ((result (do-applescript
  ;;                  (concat
  ;;                   "set frontmostApplication to path to frontmost application\n"
  ;;                   "tell application \"Google Chrome\"\n"
  ;;                   " set theUrl to get URL of active tab of first window\n"
  ;;                   " set theResult to (get theUrl) \n"
  ;;                   "end tell\n"
  ;;                   "activate application (frontmostApplication as text)\n"
  ;;                   "set links to {}\n"
  ;;                   "copy theResult to the end of links\n"
  ;;                   "return links as string\n"))))
  ;;     (format "%s" result)))
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
   (quote
    (xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help youdao-dictionary yasnippet-snippets ws-butler winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org tagedit symon string-inflection spaceline-all-the-icons smeargle slim-mode scss-mode sass-mode restart-emacs rainbow-delimiters pug-mode prettier-js popwin persp-mode pcre2el password-generator paradox overseer orgit org-projectile org-present org-pomodoro org-mime org-download org-bullets org-brain open-junk-file neotree nameless mwim move-text magit-svn magit-gitflow macrostep lorem-ipsum link-hint indent-guide impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link fuzzy font-lock+ flyspell-correct-helm flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu emmet-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline diminish define-word counsel-projectile company-web company-statistics column-enforce-mode clean-aindent-mode centered-cursor-mode auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
